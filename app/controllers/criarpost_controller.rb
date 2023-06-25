class CriarpostController < ApplicationController
  def create
    post = UserPost.create(descricao_post: params[:descricao_post])
    # Faça qualquer outra ação necessária com o objeto "post"
    redirect_to root_path, notice: 'Post criado com sucesso!'
  end
end
