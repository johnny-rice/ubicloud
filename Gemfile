# frozen_string_literal: true

source "https://rubygems.org"
ruby "3.2.7"

gem "argon2"
gem "committee"
gem "nokogiri"
gem "bcrypt_pbkdf"
gem "ed25519"
gem "net-ssh"
gem "netaddr"
gem "tilt", ">= 2.6"
gem "erubi", ">= 1.5"
gem "puma", ">= 6.2.2"
gem "roda", ">= 3.89"
gem "rodauth", ">= 2.38"
gem "rodish", github: "jeremyevans/rodish", ref: "1ea987d745780d8abbc70cbaca25cebc0c7b6fcf"
gem "rotp"
gem "rqrcode"
gem "mail"
gem "shellwords"
gem "refrigerator", ">= 1"
gem "sequel", github: "jeremyevans/sequel", ref: "ffb9e288528877086e9acd04c82979502da26218"
gem "sequel_pg", ">= 1.8", require: "sequel"
gem "rack-unreloader", ">= 1.8"
gem "rake"
gem "warning"
gem "pry"
gem "excon"
gem "jwt"
gem "pagerduty", ">= 4.0"
gem "stripe"
gem "countries"
gem "octokit"
gem "argon2-kdf"
gem "rodauth-omniauth", github: "janko/rodauth-omniauth", ref: "477810179ba0cab8d459be1a0d87dca5b57ec94b"
gem "omniauth-github", "~> 2.0"
gem "omniauth-google-oauth2", "~> 1.2"

group :development do
  gem "awesome_print"
  gem "by", ">= 1.1.0"
  gem "foreman"
  gem "pry-byebug"
  gem "rackup"
  gem "cuprite"
end

group :rubocop do
  gem "rubocop-capybara", "~> 2.21.0"
  gem "rubocop-erb"
  gem "rubocop-performance"
  gem "rubocop-rake"
  gem "rubocop-rspec"
  gem "rubocop-sequel"
  gem "standard", ">= 1.24.3"
end

group :lint do
  gem "erb-formatter", github: "ubicloud/erb-formatter", ref: "a9ff0001a1eb028e2186b222aeb02b07c04f9808"
  gem "brakeman"
end

group :test do
  gem "capybara"
  gem "capybara-validate_html5", ">= 2"
  gem "rspec"
  gem "webmock"
  gem "pdf-reader"
  gem "turbo_tests"
  gem "simplecov"
end

group :test, :development do
  gem "sequel-annotate"
end

gem "webauthn", "~> 3.2"

gem "aws-sdk-s3", "~> 1.182"

gem "acme-client", "~> 2.0"

gem "prawn", "~> 2.5"

gem "prawn-table", "~> 0.2.2"
