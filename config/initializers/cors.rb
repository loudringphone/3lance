Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000', 'https://threelancers-server.herokuapp.com'
      resource '*',
        :headers => :any,
        :methods => %i(get post put patch delete options head)
        # %i is array of symbols
    end
  end
