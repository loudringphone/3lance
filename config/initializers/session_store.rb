if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_3LANCERS_CLIENT', domain: '3LANCERS_CLIENT-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_3LANCERS_CLIENT'
end