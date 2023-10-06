Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'patients/:patient_id/recommendations', to: 'patients#get_recommendations'
      resources :patients

      post '/consultation_requests', to: 'consultation_requests#create'
      resources :consultation_requests

      post '/consultation_requests/:id/recommendations', to: 'consultation_requests#create_recommendation'
      resources :recommendations
    end
  end
end
