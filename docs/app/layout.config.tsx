import type { BaseLayoutProps } from 'fumadocs-ui/layouts/shared';
import { SiDiscord, SiGithub } from '@icons-pack/react-simple-icons';
import TebexIcon from '@/components/icons/TebexIcon';
import Image from 'next/image';
import Logo from '@/public/favicon-32x32.png';

/**
 * Shared layout configurations
 *
 * you can configure layouts individually from:
 * Home Layout: app/(home)/layout.tsx
 * Docs Layout: app/docs/layout.tsx
 */
export const baseOptions: BaseLayoutProps = {
  nav: {
    title: (
      <>
        <Image alt="rHUD Documentation" src={Logo} className="size-5 [.uwu_&]:hidden [header_&]:size-6" aria-label="rHUD" />
        <span className="font-medium [.uwu_&]:hidden [header_&]:text-[15px]">rHUD Documentation</span>
      </>
    ),
    transparentMode: 'top',
  },
  links: [
    {
      text: 'GitHub',
      url: 'https://github.com/Raxdiam/rHUD',
      icon: <SiGithub />,
      type: 'icon',
    },
    {
      text: 'Discord',
      url: 'https://discord.gg/ugU6DsJWgc',
      icon: <SiDiscord />,
      type: 'icon',
    },
    {
      text: 'Tebex',
      url: 'https://raxdiam.tebex.io/',
      icon: <TebexIcon />,
      type: 'icon',
    },
  ],
};
