# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_selected_categories, except: %i[edit update]
  # resources :restaurant_categories, only: %i[index show]
  resources :preferences, except: %i[new edit]
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
  get '/foursquare' => 'foursquare#retrieveData'
end
