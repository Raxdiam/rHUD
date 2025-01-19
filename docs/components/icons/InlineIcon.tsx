import React, { FC, PropsWithChildren } from 'react';

export interface InlineIconProps extends PropsWithChildren {
  style?: React.CSSProperties;
}

/**
 * A small wrapper that displays its child inline with text.
 */
const InlineIcon: FC<InlineIconProps> = ({ children, style }) => {
  return (
    <span
      style={{
        display: 'inline-block',
        verticalAlign: 'middle',
        marginRight: '0.4em',
        ...style,
      }}
    >
      {children}
    </span>
  );
};

export default InlineIcon;
