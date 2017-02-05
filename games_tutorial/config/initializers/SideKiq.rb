# config/application.rb
require 'sucker_punch/async_syntax'
class Application < Rails::Application
  # ...
  config.active_job.queue_adapter = :sucker_punch
end