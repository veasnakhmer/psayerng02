require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App04
  class Application < Rails::Application
    
    Rails.application.config.assets.precompile += %w( bootstrap.css )
    Rails.application.config.assets.precompile += %w( bootstrap.min.css )
    Rails.application.config.assets.precompile += %w( bootstrap.js )
    Rails.application.config.assets.precompile += %w( script.js )
    Rails.application.config.assets.precompile += %w( menu.js )
    Rails.application.config.assets.precompile += %w( left_menu2.css )
    Rails.application.config.assets.precompile += %w( left_menu3.css )
    Rails.application.config.assets.precompile += %w( wheelmenu.css )
    Rails.application.config.assets.precompile += %w( menu2.js )
    Rails.application.config.assets.precompile += %w( jquery.wheelmenu.js )
    
    config.assets.precompile += %w( zoom_img.css )
    config.assets.precompile += %w( jquery.jqzoom.css )
    config.assets.precompile += %w( jquery.jqzoom-core.js )
    config.assets.precompile += %w( jquery-1.6.js )
    #config.assets.precompile += %w( image.js )
    
	config.serve_static_assets = true
	config.assets.initialize_on_precompile = true
	config.generators do |g|
	  g.assets false
	end
	config.assets.enabled = true
	config.assets.digest = true
   # config.assets.initialize_on_precompile = true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
