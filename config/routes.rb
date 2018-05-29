Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'trips/:train_id', :to => 'trips#by_train'
  get 'trips/after/:date', :to => 'trips#after_date'
  get 'trips/:id/users', :to => 'trips#get_users'
  get 'trips/query/last_week_trips', :to => 'trips#get_last_week_trips'
  get 'trips/:id/duration', :to => 'trips#duration'
  resources :trips, only: [:index, :destroy, :create, :update, :show]

  get 'users/count', :to => 'users#count'
  get 'users/:first_name', :to => 'users#by_first_name'
  post 'users/add_trip', :to => 'users#create_trip'
  get 'users/:id/trips', :to => 'users#get_trips'
  resources :users, only: [:create, :destroy, :update, :show, :index]

  get 'train/two_first', :to => 'train#first_two'
  get 'train/all_names', :to => 'train#all_names'
  get 'train/:id/place_count', :to => 'train#place_count'
  get 'train/smallest_place_count', :to => 'train#smallest_place_count'
  resources :train, only: [:update, :index, :create, :show, :destroy]

  get 'city/has_stations/:count/:name', :to => 'city#cities_with_stations'
  resources :city, only: [:create, :show, :index, :destroy, :update]

  get 'country/:id/railways', :to => 'country#railways'
  resources :country, only: [:show, :create, :destroy, :index, :update]

  get 'railway/:id/last_week_trips', :to => 'railway#get_last_week_trips'
  resources :railway, only: [:index, :update, :show, :create, :destroy]

end
