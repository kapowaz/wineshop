require 'bundler'
Bundler.require

require 'sinatra/asset_pipeline'
require 'rdiscount'

class WineShop < Sinatra::Base
  set :views,         File.dirname(__FILE__) + '/app/views'
  set :public_folder, File.dirname(__FILE__) + '/public'
  set :app_root,      File.expand_path(File.dirname(__FILE__))
  
  APP_ROOT = settings.app_root
  
  # set :assets_host, "whatever.cloudfront.net" # replace this with a live CDN address for production
  set :assets_precompile, %w(application.css application.js vendor.js *.png *.jpg *.svg *.eot *.ttf *.woff)
  set :assets_protocol, :http
  set :assets_css_compressor, :sass
  set :assets_js_compressor, :uglify
  set :assets_precompile, %w(application.css application.js vendor.js *.png *.jpg *.svg *.eot *.ttf *.woff)
  
  register Sinatra::AssetPipeline
end

Dir[File.join(File.dirname(__FILE__), 'app/**/*.rb')].sort.each { |f| require f }
