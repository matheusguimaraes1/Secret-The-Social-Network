class CriarpostController < ApplicationController
  def create
    render 'criarpost'
    post = UserPost.create(descricao_post: params[:descricao_post])
    # Faça qualquer outra ação necessária com o objeto "post"

    #redirect_to notice: 'Post criado com sucesso!'
  end
end
