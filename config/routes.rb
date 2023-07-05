# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main_view#index"

  namespace :turbo_showcase do
    resources :updating_methods do
      collection do
        post :happy_mood
        post :sad_mood
      end
    end
    resources :replacing_methods do
      collection do
        post :happy_mood
        post :sad_mood
      end
    end
    resources :appending_methods do
      collection do
        post :another_one
        post :sober
      end
    end
  end
end
