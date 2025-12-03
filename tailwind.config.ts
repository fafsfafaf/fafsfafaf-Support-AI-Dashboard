import type { Config } from "tailwindcss";

export default {
  darkMode: ["class"],
  content: ["./pages/**/*.{ts,tsx}", "./components/**/*.{ts,tsx}", "./app/**/*.{ts,tsx}", "./src/**/*.{ts,tsx}"],
  prefix: "",
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        success: {
          DEFAULT: "hsl(var(--success))",
          foreground: "hsl(var(--success-foreground))",
        },
        warning: {
          DEFAULT: "hsl(var(--warning))",
          foreground: "hsl(var(--warning-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
        chart: {
          1: "hsl(var(--chart-1))",
          2: "hsl(var(--chart-2))",
          3: "hsl(var(--chart-3))",
          4: "hsl(var(--chart-4))",
          5: "hsl(var(--chart-5))",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
      keyframes: {
        "accordion-down": {
          from: {
            height: "0",
          },
          to: {
            height: "var(--radix-accordion-content-height)",
          },
        },
        "accordion-up": {
          from: {
            height: "var(--radix-accordion-content-height)",
          },
          to: {
            height: "0",
          },
        },
        "pulse-glow": {
          "0%, 100%": { opacity: "0.6", transform: "scale(1)" },
          "50%": { opacity: "1", transform: "scale(1.05)" },
        },
        "rotate-slow": {
          "0%": { transform: "rotate(0deg)" },
          "100%": { transform: "rotate(360deg)" },
        },
        "rotate-slow-reverse": {
          "0%": { transform: "rotate(360deg)" },
          "100%": { transform: "rotate(0deg)" },
        },
        "float": {
          "0%, 100%": { transform: "translateY(0px)" },
          "50%": { transform: "translateY(-10px)" },
        },
        "fade-in": {
          "0%": {
            opacity: "0",
            transform: "translateY(10px)",
          },
          "100%": {
            opacity: "1",
            transform: "translateY(0)",
          },
        },
        "element": {
          "0%": {
            opacity: "0",
            filter: "blur(4px)",
            transform: "translateY(20px)",
          },
          "100%": {
            opacity: "1",
            filter: "blur(0px)",
            transform: "translateY(0px)",
          },
        },
        "slide-right": {
          "0%": {
            opacity: "0",
            filter: "blur(4px)",
            transform: "translateX(-20px)",
          },
          "100%": {
            opacity: "1",
            filter: "blur(0px)",
            transform: "translateX(0px)",
          },
        },
        "testimonial": {
          "0%": {
            opacity: "0",
            filter: "blur(4px)",
            transform: "translateY(20px) scale(0.95)",
          },
          "100%": {
            opacity: "1",
            filter: "blur(0px)",
            transform: "translateY(0px) scale(1)",
          },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
        "pulse-glow": "pulse-glow 3s ease-in-out infinite",
        "rotate-slow": "rotate-slow 30s linear infinite",
        "rotate-slow-reverse": "rotate-slow-reverse 20s linear infinite",
        "float": "float 6s ease-in-out infinite",
        "fade-in": "fade-in 0.5s ease-out",
        "element": "element 0.6s ease-out forwards",
        "slide-right": "slide-right 0.8s ease-out forwards",
        "testimonial": "testimonial 0.6s ease-out forwards",
        "delay-100": "0.1s",
        "delay-200": "0.2s",
        "delay-300": "0.3s",
        "delay-400": "0.4s",
        "delay-500": "0.5s",
        "delay-600": "0.6s",
        "delay-700": "0.7s",
        "delay-800": "0.8s",
        "delay-900": "0.9s",
        "delay-1000": "1s",
        "delay-1200": "1.2s",
        "delay-1400": "1.4s",
      },
      animationDelay: {
        "100": "0.1s",
        "200": "0.2s",
        "300": "0.3s",
        "400": "0.4s",
        "500": "0.5s",
        "600": "0.6s",
        "700": "0.7s",
        "800": "0.8s",
        "900": "0.9s",
        "1000": "1s",
        "1200": "1.2s",
        "1400": "1.4s",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
} satisfies Config;
