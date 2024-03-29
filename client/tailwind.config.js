/** @type {import('tailwindcss').Config} */
module.exports = {
  mode: 'jit',
  purge: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        PT: ['PT Sans', 'sans-serif'],
        Josefin: ['Josefin Sans', 'sans-serif'],
        Source: ['Source Sans Pro', 'sans-serif'],
      },
      colors: {
        primary: '#424242',
        secondary: '#aaaaaa',
      },
      letterSpacing: {
        tightest: '-.075em',
        tighter: '-.05em',
        tight: '-.025em',
        normal: '0',
        wide: '.025em',
        wider: '.05em',
        widest: '.15em',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
