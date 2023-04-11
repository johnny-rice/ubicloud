# frozen_string_literal: true

source "https://rubygems.org"
ruby "3.2.2"

gem "argon2"
gem "bcrypt_pbkdf"
gem "ed25519"
gem "net-ssh"
gem "netaddr"
gem "ruby-ulid"
gem "sassc", ">= 2"
gem "tilt", ">= 2.0.9"
gem "erubi", ">= 1.5"
gem "roda", ">= 3.62"
gem "rodauth", ">= 2.26.1"
gem "rotp"
gem "rqrcode"
gem "mail"
gem "refrigerator", ">= 1"
gem "sequel", ">= 5.62"
gem "sequel_pg", ">= 1.8", require: "sequel"
gem "rack-unreloader", ">= 1.8"
gem "rake"
gem "zeitwerk"
gem "warning"

group :development do
  gem "erb-formatter", github: "fdr/erb-formatter", ref: "5ecacb2cd5544a41de969bc86b57a98523f0ce06"
  gem "pry"
  gem "pry-byebug"
  gem "rackup"
  gem "sequel-annotate"
  gem "rubocop-capybara"
  gem "rubocop-erb"
  gem "rubocop-performance"
  gem "rubocop-rake"
  gem "rubocop-rspec"
  gem "rubocop-sequel"
  gem "standard", ">= 1.24.3"
  gem "simplecov"
end

group :test do
  gem "database_cleaner-sequel"
  gem "capybara"
  gem "rspec"
end
