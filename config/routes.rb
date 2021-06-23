# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  resources :students
  resources :teachers
  resources :subjects
  resources :courses

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
