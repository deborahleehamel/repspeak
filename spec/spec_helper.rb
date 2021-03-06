require 'simplecov'
SimpleCov.start 'rails'

require 'omniauth-twitter'
require 'database_cleaner'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

def mock_auth_hash
  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
    'provider' => 'twitter',
    'uid' => '123545',
    'info' => {image: 'image.jpg'},
    'extra' => {
      'raw_info' => {
        'screen_name' => 'mock_user_name'
      },
    },
    'credentials' => {
      'token' => '11112222',
      'secret' => '1234567890'
    },
  })
end

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
