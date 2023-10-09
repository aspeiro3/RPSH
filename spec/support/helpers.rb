require 'support/helpers/authorization_helper'
require 'support/helpers/integration_helper'

RSpec.configure do |config|
  config.include AuthorizationHelper
  config.include IntegrationHelper, type: :acceptance
end
