Rails.application.configure do
  # Application configuration goes here
  config.active_storage.service = :local
end

# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!