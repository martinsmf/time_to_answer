Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject'
    post 'answer', to: 'answer#question'
  end
  namespace :admins_backoffice do
    get 'welcome/index' # Dashboard
    resources :admins # Administrators
    resources :subjects # Assuntos/Areas
    resources :questions # Questões
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'inicio', to: 'site/welcome#index'
  root to: 'site/welcome#index'
end