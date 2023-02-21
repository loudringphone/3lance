Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://threelancers.herokuapp.com', 'https://3lancers.netlify.app', 'localhost:3001'
      resource '*',
        :headers => :any,
        :methods => %i(get post put patch delete options head)
        # %i is array of symbols
    end
  end
