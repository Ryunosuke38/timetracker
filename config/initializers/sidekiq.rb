addr = "redis://localhost:6379"
addr = "redis://#{ENV["REDIS_PORT_6379_TCP_ADDR"]}:6379" if ENV["REDIS_PORT_6379_TCP_ADDR"]

puts "Using #{addr} for sidekiq redis instance"

Sidekiq.configure_server do |config|
  config.redis = { url: addr }
end

Sidekiq.configure_client do |config|
  config.redis = { url: addr }
end
