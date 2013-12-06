NashRb::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  ActiveAdmin.routes(self)
  match '/404' => 'errors#not_found'
  match '/422' => 'errors#unprocessable_entity'
  match '/500' => 'errors#application_error'
  root :to => 'home#index'
end
