module.exports = {
  content: [
    './src/**/*.{html,js,php}',
    'node_modules/preline/dist/*.js',
    "./node_modules/flowbite/**/*.js"
  ],
  theme: {
    extend: {

    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('preline/plugin'),
    require('flowbite/plugin'),
  ],
}