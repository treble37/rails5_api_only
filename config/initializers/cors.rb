# config/initializers/cors.rb
# https://hashrocket.com/blog/posts/how-to-make-rails-5-api-only
Rails.application.config.middleware.insert_before 0, "Rack::Cors" do
  allow do
    origins 'localhost:4200'
    resource '*',
      headers: :any,
      methods: %i(get post put patch delete options head)
  end
end
