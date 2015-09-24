Rails.application.routes.draw do
  
  # Mount LetterOpenerWeb engine
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  # Converts url from '/users' to '/', renames sign_up, sign_in, sign_out paths and removes registrations paths
  # to add them below replacing the '/edit' with '/account'
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks", registrations: "users/registrations"},
    path: "", path_names: {sign_up: "signup", sign_in: "login", sign_out: "logout"}, skip: [:registrations]
  
  devise_scope :user do
    delete "/users/auth/:provider/destroy" => "users/omniauth_callbacks#destroy_identity", as: :user_omniauth_destroy_identity
    match "/signup/finish" => "users/registrations#finish", via: [:get, :patch], as: :finish_user_registration
    # Let's replace /edit path with a more descriptive /account to edit user registration
    get "/account" => "users/registrations#edit", as: :edit_user_registration
    # Default routes for RegistrationsController
    get "/signup" => "users/registrations#new", as: :new_user_registration
    get "/cancel" => "users/registrations#cancel", as: :cancel_user_registration
    post "/" => "users/registrations#create", as: :user_registration
    patch "/" => "users/registrations#update"
    put "/" => "users/registrations#update"
    delete "/" => "users/registrations#destroy"
  end
  
  get "/dashboard" => "dashboard#index"
  
  root to: "static#index"

end
