# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == [ENV['USER_NAME'], ENV['PASSWORD']]
end

run Rails.application
