import { createMDX } from 'fumadocs-mdx/next';

const withMDX = createMDX();

/** @type {import('next').NextConfig} */
const config = {
  reactStrictMode: true,
  trailingSlash: true,
  basePath: '/docs',
  distDir: process.env.NODE_ENV === 'development' ? '.next' : 'build',
  output: 'standalone'
};

export default withMDX(config);
