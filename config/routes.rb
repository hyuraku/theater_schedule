Rails.application.routes.draw do
  root "schedules#index"
  resources :schedules
  # resources :works
  # resources :theaters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
   resources :schedules
   # get "schedules/show/:theater_id/:work_id/" => "schedules#show"
   get "schedules/show/:theater_id/" => "schedules#show"
  end
end
