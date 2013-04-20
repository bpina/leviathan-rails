require 'socket'
require 'rubygems'
require 'msgpack'
require 'yaml'
require 'active_support'

APP_ROOT = File.dirname(__FILE__)

module Leviathan
  def self.connection
    @connection
  end

  def self.connection=(value)
    @connection = value
  end

  def self.initialize_subscriptions(connection)
    self::connection = connection

    config = YAML.load_file(File.join(APP_ROOT, 'config/subscriptions.yml'))

    config['subscriptions'].each do |x|
      ActiveSupport::Notifications.subscribe x do |*args|
        Leviathan::notify(connection, args)
      end
    end
  end

  def self.notify(connection, args)
    e = ActiveSupport::Notifications::Event.new(*args)
    message = e.payload.to_msgpack

    UDPSocket.new.send message, 0, connection[:host], connection[:port]
  end
end
