# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join("node_modules")

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.

# These files are in /app/assets
Rails.application.config.assets.precompile += %w( 
   admins_backoffice.js 
   admins_backoffice.css 
   users_backoffice.js
   users_backoffice.css
)

# These files are in /lib/assets
Rails.application.config.assets.precompile += %w(
   sb-admin-2.min.js
   sb-admin-2.min.css
   custom.min.js
   custom.min.css
   img.jpg
   undraw_profile.svg
   undraw_profile_3.svg
   undraw_profile_2.svg
   undraw_profile_1.svg
)

# These files are in /vendor/assets
Rails.application.config.assets.precompile += %w(
   jquery_2_2_3/dist/jquery.min.js
   bootstrap/dist/js/bootstrap.bundle.min.js
   malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css
   malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js
   css/custom.min.css
   js/custom.min.js
)