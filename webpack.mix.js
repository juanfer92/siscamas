const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
   .js('resources/js/jQuery-2.1.4.min.js', 'public/js')
   .js('resources/js/bootstrap.js', 'public/js')
   .js('resources/js/toastr.js', 'public/js')
   .sass('resources/sass/toastr.css', 'public/css')
   .sass('resources/sass/app.scss', 'public/css')
   .sass('resources/sass/app.scss', 'public/css');
