Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'trips', :to => 'trips#all'
  get 'trips/longest_trip', :to => 'trips#longest_trip'
  get 'trips/:railway_id', :to => 'trips#by_railway'

end
