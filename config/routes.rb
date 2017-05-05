Rails.application.routes.draw do
  devise_for :admins
  mount_devise_token_auth_for 'User', at: 'auth'

  root 'home#readme'
  get '/prompts/active' => 'prompts#active'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
