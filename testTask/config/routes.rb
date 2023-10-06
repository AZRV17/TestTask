Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'patients/:patient_id/recommendations', to: 'recommendations#get'
      resources :patients

      post '/consultation_requests/:id/recommendations', to: 'recommendations#create'
      resources :recommendations

      post '/consultation_requests', to: 'consultation_requests#create'
      resources :consultation_requests
    end
  end
end
