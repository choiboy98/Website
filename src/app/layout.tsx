import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import './globals.css'
import './fonts/fonts.css'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'brb-traveling',
  description: 'Travele with me through my POV',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className={inter.className}>{children}</body>
    </html>
  )
}
