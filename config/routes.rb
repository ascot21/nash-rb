NashRb::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  ActiveAdmin.routes(self)
  match '/404' => 'errors#not_found'
  match '/422' => 'errors#unprocessable_entity'
  match '/500' => 'errors#application_error'
  root :to => 'home#index'
end
