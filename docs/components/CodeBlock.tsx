'use client';

import { Pre, CodeBlock as FumaCodeBlock } from 'fumadocs-ui/components/codeblock';
import { PrerenderScript, useShiki } from 'fumadocs-core/utils/use-shiki';
import * as React from 'react';
import { ReactNode, useEffect, useState } from 'react';
import { useId } from 'react';
import { SiLua, SiJavascript, SiTypescript } from '@icons-pack/react-simple-icons';
import { Braces } from 'lucide-react';
import { transformerNotationHighlight, transformerNotationDiff } from '@shikijs/transformers';
import { ShikiTransformer, CodeToHastOptionsCommon, BundledLanguage, CodeOptionsThemes, CodeOptionsMeta, Awaitable, RegexEngine, BundledTheme } from 'shiki';
import { Components } from 'hast-util-to-jsx-runtime';

interface CodeBlockProps {
  url?: string;
  code?: string;
  lang: string;
  title?: string;
  fill?: boolean;
  children?: ReactNode;
}

function getLangIcon(lang: string) {
  lang = lang.toLowerCase();

  switch (lang) {
    case 'lua':
      return <SiLua />;
    case 'javascript':
    case 'js':
      return <SiJavascript />;
    case 'typescript':
    case 'ts':
      return <SiTypescript />;
    default:
      return <Braces />;
  }
}

export function CodeBlock({ url, code: propCode, lang, title, fill, children }: CodeBlockProps) {
  const [code, setCode] = useState<string>(propCode || 'Loading...');
  const scriptKey = useId();

  useEffect(() => {
    if (children && typeof children === 'string') {
      setCode(children);
    }
  }, [children]);

  useEffect(() => {
    if (propCode && (!children || typeof children !== 'string')) {
      setCode(propCode);
    }
  }, [propCode, children]);

  useEffect(() => {
    if (url && !propCode && (!children || typeof children !== 'string')) {
      async function fetchCode() {
        try {
          const response = await fetch(url as string);
          if (!response.ok) {
            throw new Error(`Failed to fetch: ${response.status} ${response.statusText}`);
          }
          const text = await response.text();
          setCode(text);
        } catch (err) {
          setCode('// Error loading code');
        }
      }
      fetchCode();
    }
  }, [url, propCode, children]);

  type HighlightOptions = CodeToHastOptionsCommon<BundledLanguage> & (CodeOptionsThemes<BundledTheme> | Record<never, never>) & CodeOptionsMeta & {
    engine?: Awaitable<RegexEngine>;
    components?: Partial<Components>;
};
  const shikiOptions: HighlightOptions & {
    defaultValue?: ReactNode;
    scriptKey?: string;
  } = {
    lang,
    scriptKey,
    transformers: [
      transformerNotationHighlight() as ShikiTransformer,
      transformerNotationDiff() as ShikiTransformer,
    ],
  };

  const highlightedCode = useShiki(code, shikiOptions);

  return (
    <>
      <PrerenderScript scriptKey={scriptKey} code={code} options={shikiOptions} />
      <FumaCodeBlock
        className="flex-1 flex flex-col"
        allowCopy
        title={title}
        lang={lang}
        icon={getLangIcon(lang)}
        viewportProps={{
          className: fill ? 'max-h-[100%]' : undefined,
        }}
      >
        <Pre>{highlightedCode}</Pre>
      </FumaCodeBlock>
    </>
  );
}
