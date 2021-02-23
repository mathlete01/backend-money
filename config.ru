# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

use Rack::Cors do
    allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :patch, :delete, :options]
    end
end
run Rails.application
