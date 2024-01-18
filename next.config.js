/** @type {import('next').NextConfig} */

const debug = process.env.NODE_ENV !== "production";

const nextConfig = {
    output: 'export',
    "/": { page: "/" },

    assetPrefix: !debug ? 'https://choiboy98.github.io/brb-traveling/' : '',
}

module.exports = nextConfig
