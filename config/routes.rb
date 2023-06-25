Rails.application.routes.draw do
  #root 'home#index'
  root 'application#render_def'
  get '/home', to: 'home#index'
  post '/user_posts', to: 'criarpost#create'

  #get '/application', to: 'application#render_def'

end
