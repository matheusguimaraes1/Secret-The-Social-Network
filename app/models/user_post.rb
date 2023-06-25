class UserPost < ApplicationRecord
  self.table_name = "users_posts"
  # Campos da tabela user_posts
attribute :id_post, :integer
attribute :id_usuario, :integer
attribute :descricao_post, :string
  # Validações
  #validates :id_post, presence: true
  #validates :id_usuario, presence: true
  #validates :descricao_post, :string

  # Outras associações, métodos ou lógica de negócio aqui
end
