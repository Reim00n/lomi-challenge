Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      post "fibo" => "fibo#show"
      devise_scope :user do
        post "login" => "sessions#create", :as => "login", :defaults => {format: :json}
        delete "sessions/current" => "sessions#destroy", :as => "logout", :defaults => {format: :json}
      end
    end
  end
  root to: 'admin/dashboard#index'end
