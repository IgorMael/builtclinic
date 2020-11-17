# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'dashboard#index'

  resources :doctors, except: :show
  resources :patients, except: :show
  resources :appointments, except: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
