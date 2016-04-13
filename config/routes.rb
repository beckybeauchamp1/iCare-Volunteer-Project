Rails.application.routes.draw do

  # I would have some type of "home" route so it directs users to a page
  get '' => 'events#index'
  resources :events
  resources :stories
end
