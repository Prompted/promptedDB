Rails.application.routes.draw do
  devise_for :admins
  mount_devise_token_auth_for 'User', at: 'auth'

  root 'home#readme'
  get '/prompts/active' => 'prompts#active'

  #routes for admin site
  get '/admins/admin/:id' => 'admins#show'
  get '/admins/prompt/new' => 'admins/prompts#new'
  post '/admins/prompt/create' => 'admins/prompts#create'
  # post '/admins/show/:tvrage_id' => 'admins/shows#create'
  # get '/admins/show/:id/edit' => 'admins/shows#edit'
  # patch '/admins/show/:id/update' => 'admins/shows#update'
  # patch '/admins/show/:id/deactivate' => 'admins/shows#deactivate'
  # patch '/admins/show/:id/activate' => 'admins/shows#activate'
  # get '/admins/shows' => 'admins/shows#index'
end
