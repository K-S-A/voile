source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.21'
gem 'puma', '~> 3.9'
gem 'hamlit-rails', '~> 0.2'
gem 'jbuilder', '~> 2.7'
gem 'friendly_id', '~> 5.2'
gem 'babosa', '~> 1.0'
gem 'devise', '~> 4.3'
gem 'date_validator', '~> 0.9'
gem 'cancancan', '~> 2.0'
# gem 'state_machines-activerecord', '~> 0.5'
gem 'paranoia', '~> 2.3'
# gem 'lock_validator_rails', github: 'cimon-io/lock_validator_rails'
# gem 'public_suffix', '~> 2.0', require: false
# gem 'query_diet', '~> 0.6'

gem 'simple_form', '~> 3.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '~> 3.2'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails', '~> 4.3'
gem 'jquery-ui-rails', '~> 6.0'
gem 'turbolinks', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3'
gem 'bootstrap-tagsinput-rails', '~> 0.4.2'
gem 'underscore-rails', '~> 1.8'
gem 'rails-timeago', '~> 2.16'
# gem 'datetime_format_converter', '~> 0.0.4'
gem 'attribute_normalizer', '~> 1.2'
# gem 'redcarpet', '~> 3.4'
# gem 'markdown_checkboxes', github: 'K-S-A/markdown_checkboxes'
gem 'dropzonejs-rails', github: 'cimon-io/dropzonejs-rails'
gem 'octicons-rails', github: 'fukayatsu/octicons-rails', branch: 'rails-5'
gem 'kaminari', '~> 1.0'

gem 'susanin', github: 'cimon-io/susanin'
gem 'glipper', github: 'cimon-io/glipper'
gem 'menuseful', github: 'cimon-io/menuseful'
gem 'money-rails', '~>1'

group :development, :test do
  gem 'puma-fsevent_cleanup', '~> 0.1'

  gem 'pry-rails', '~> 0.3'
  gem 'pry', '~> 0.10', require: false
  gem 'pry-doc', '~> 0.10', require: false
  gem 'pry-byebug', '~> 3.4'

  gem 'rspec-rails', '~> 3.6'
  gem 'factory_bot_rails', '~> 4.8'
  gem 'rubocop', '~> 0.49', require: false
  gem 'overcommit', '~> 0.40'
  gem 'fuubar', '~> 2.2', require: false
  gem 'active_record_query_trace', '~> 1.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'simplecov', '~> 0.14', require: false
  gem 'rspec-simplecov', '~> 0.2'
  gem 'database_cleaner', '~> 1.6'
  gem 'faker', '~> 1.8'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'rspec-its', '~> 1.2'
  gem 'timecop', '~> 0.9'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
