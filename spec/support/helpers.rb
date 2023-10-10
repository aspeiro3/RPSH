require 'support/helpers/integration_helper'

RSpec.configure do |config|
  config.include IntegrationHelper, type: :acceptance
end
