Rails.application.routes.draw do
  root 'welcome#index'
  resources :students
  resources :teachers
  resources :subjects
  resources :courses
 
end
