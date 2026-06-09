import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Genera una build mínima e independiente para imágenes de producción.
  output: "standalone",
};

export default nextConfig;
