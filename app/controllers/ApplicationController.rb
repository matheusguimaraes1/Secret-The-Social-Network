class ApplicationController < ActionController::Base
  def render_def
    @user_posts = UserPost.all
    render 'application'
  end

  def like
    @user_post = UserPost.find(params[:post_id]) # encontra o post pelo id do post
    @user_post.like += 1 # incrementa o número de likes
    @user_post.save # salva o post atualizado
    redirect_to posts_path # redireciona para a página de posts
  end

end
