Rails.application.routes.draw do
  devise_for :admins
  mount_devise_token_auth_for 'User', at: 'auth'

  root 'home#readme'
  get '/prompts/active' => 'prompts#active'
  post '/submissions/create' => 'submissions#create'

  #routes for admin site
  get '/admins/admin/:id' => 'admins#show'
  get '/admins/prompt/new' => 'admins/prompts#new'
  post '/admins/prompt/create' => 'admins/prompts#create'


end
