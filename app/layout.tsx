import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Singular Quantum AI",
  description: "Proyecto base con Next.js 16.2 y Docker",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="es">
      <body>{children}</body>
    </html>
  );
}
