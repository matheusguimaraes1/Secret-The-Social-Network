class PerfilController < ApplicationController
  def perfil
    @user_posts = UserPost.all
    render 'perfil'
  end
end
