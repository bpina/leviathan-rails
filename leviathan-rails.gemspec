Gem::Specification.new do |s|
  s.name        = 'leviathan-rails'
  s.version     = '0.0.4.alpha'
  s.summary     = 'Rails Monitoring Gem'
  s.description = 'Socket pusher for ActiveSupport::Notifications'
  s.authors     = ['Brian Pina']
  s.email       = 'brian.pina@gmail.com'
  s.files       = ['lib/leviathan-rails.rb', 'lib/config/subscriptions.yml']
  s.homepage    = 'https://github.com/bpina/leviathan-rails'

  s.add_runtime_dependency 'activesupport_notifications_backport', '~> 0.0.4'
  s.add_runtime_dependency 'msgpack'
end
