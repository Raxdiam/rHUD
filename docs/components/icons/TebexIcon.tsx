import * as React from 'react';

export interface TebexIconProps extends React.SVGProps<SVGSVGElement> {
  title?: string;
  color?: string;
  size?: number | string;
}

export const defaultColor = '#000000';

const TebexIcon = React.forwardRef<SVGSVGElement, TebexIconProps>(function TebexIcon2(
  { title = 'Tebex', color = 'currentColor', size = 24, ...others },
  ref
) {
  if (color === 'default') {
    color = defaultColor;
  }

  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width={size}
      height={size}
      fill={color}
      viewBox="0 0 24 24"
      ref={ref}
      {...others}
    >
      {title && <title>{title}</title>}
      <g transform="matrix(0.318514,0,0,0.318514,-5.18495,-0.0112134)">
        <path d="M55.836,19.147C58.681,14.428 63.831,13.06 63.831,13.06C63.831,13.06 54.001,10.446 54.001,0C54.001,10.446 44.166,13.06 44.166,13.06C44.166,13.06 49.318,14.428 52.164,19.147L38.727,19.147L38.727,37.239L41.782,31.636L47.889,31.636L47.889,62.861L60.107,75.35L60.107,37.119C56.992,35.65 52.516,31.918 50.912,29.071C53.65,29.916 57.322,31.026 60.181,31.638L69.272,31.638L69.272,19.147L55.836,19.147Z" />
      </g>
    </svg>
  );
});

export default TebexIcon;
