ENV['RAILS_ENV'] ||= 'test'
require 'simplecov'
SimpleCov.start 'rails'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
require 'wisper/rspec/matchers'
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.filter_run show_in_doc: true if ENV['APIPIE_RECORD']
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.extend ControllerMacros, type: :controller
  config.include Requests::JsonHelpers, type: :controller
  config.filter_run show_in_doc: true if ENV['APIPIE_RECORD']
  config.include Wisper::RSpec::BroadcastMatcher, type: :service
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
