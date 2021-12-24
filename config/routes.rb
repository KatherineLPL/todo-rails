Rails.application.routes.draw do
 
  # GET route to know that API is online.
  # Limited to json requests - sends a 200 response with empty headers and empty response body
  if Rails.env.development?
    get '/', to: proc { [200, {}, ['']] }, constraints: { format: 'json' }
  end

  namespace :api do
    namespace :v1 do
      resources :todos
    end
  end

end