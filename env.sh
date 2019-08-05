project_name='noben'
alias docker-compose="docker-compose -p $project_name"
alias bundle="docker-compose run -e RAILS_ENV=development --rm web bundle"
alias build="docker-compose build"
alias up="rm -f tmp/pids/server.pid && docker-compose up"
alias stop="rm -f tmp/pids/server.pid && docker-compose stop"
alias rails="docker-compose run -e RAILS_ENV=development --rm web bundle exec rails"
alias rake="docker-compose run -e RAILS_ENV=development --rm web bundle exec rake"
alias rspec="docker-compose run -e RAILS_ENV=test --rm web bundle exec rspec"
alias rubocop="docker-compose run -e RAILS_ENV=development --rm web bundle exec rubocop"
alias webpack="docker-compose run -e --rm web bin/webpack"

