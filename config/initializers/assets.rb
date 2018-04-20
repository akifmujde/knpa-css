# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
 Rails.application.config.assets.precompile += %w( bootstrap.min.js charts.js colors.js filters.js global.js idangerous.swiper.min.js isotope.pkgd.min.js jqColorPicker.js jquery.canvasjs.min.js jquery.countTo.js jquery.easy-autocomplete.min.js jquery.mixitup.js jquery.viewportchecker.min.js jquery.viewportchecker.min.js jquery-2.1.4.min.js jquery-ui.js jquery-ui.min.js sorttable.js magnific.js map.js script.js  wow.js bootstrap.min.css colorpicker.css font-awesome.min.css icon.css idangerous.swiper.css idangerous.swiper_backup.css ie-9.css jquery-ui.css loader.css magnific.css stylesheet.css)
