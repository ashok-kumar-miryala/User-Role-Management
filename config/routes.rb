# frozen_string_literal: true

Rails.application.routes.draw do
  resources :employees
  get 'users/profile'
  get "users" => "users", as: "users"
  get 'users/show'
  # get 'users/edit'
  get "users/:id/edit" => "users#edit", as: "edit_user"
  put "users/:id/update" => "users#update", as: "update"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: 'omni_auth'
  }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get '/users/sign_out' => 'devise/sessions#destroy'

    get 'forgot_password', to: 'users/passwords#new'
    get 'reset_password', to: 'users/passwords#edit'
  end

  root to: 'application#home'
end
