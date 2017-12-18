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
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( main/jquery.min.js )
Rails.application.config.assets.precompile += %w( main/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( main/element.js )
Rails.application.config.assets.precompile += %w( main/modernizr.js )
Rails.application.config.assets.precompile += %w( main/owl.carousel.js )
Rails.application.config.assets.precompile += %w( main/jquery.localscroll-1.2.7-min.js )
Rails.application.config.assets.precompile += %w( main/wow.min.js )
Rails.application.config.assets.precompile += %w( main/imagesloaded.pkgd.min.js )
Rails.application.config.assets.precompile += %w( main/waypoints.min.js )
Rails.application.config.assets.precompile += %w( main/jquery.isotope.min.js )
Rails.application.config.assets.precompile += %w( main/jquery.fancybox.js )
