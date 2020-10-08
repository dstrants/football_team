# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users
  root "teams#index"
  resources :parents
  resources :teams do
    resources :players
    resources :trainings
  end
end
