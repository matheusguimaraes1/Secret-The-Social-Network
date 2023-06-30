Rails.application.routes.draw do

  #put '/application/:id', to: 'application#like', as: 'like_post'
  #patch '/application/:post_id/:user_id', to: 'application#like', as: 'like_post'

  get '/application', to: 'application#like', as: 'like_post'
  post '/user_posts', to: 'criarpost#create'
  get '/perfil', to: 'perfil#perfil', as: 'perfil'
  get '/criarpost', to: 'criarpost#create', as: 'criarpost'

  #Pagina Inicial
  root 'application#render_def', as: 'application'
end
