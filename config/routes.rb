Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'trips', :to => 'trips#all'
  get 'trip/:train_id', :to => 'trips#by_train'
  get 'trip/after/:date', :to => 'trips#after_date'
  get 'trip/delete/:id', :to => 'trips#delete'

  get 'users', :to => 'users#all'
  get 'user/count', :to => 'users#count'
  get 'user/:first_name', :to => 'users#by_first_name'
  resources :users, except: [:create, :destroy]

  get 'trains', :to => 'train#all'
  get 'train/two_first', :to => 'train#first_two'
  get 'train/all_names', :to => 'train#all_names'
  get 'train/:id/place_count', :to => 'train#place_count'
  get 'train/smallest_place_count', :to => 'train#smallest_place_count'
  resources :trains, except: [:update]

end
