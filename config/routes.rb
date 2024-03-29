# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'projects#index'

  resources :projects, except: :show do
    resources :tasks do
      post :toggle, on: :member
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
