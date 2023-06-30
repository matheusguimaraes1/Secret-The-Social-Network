class UserPost < ApplicationRecord
  self.table_name = "users_posts"
  # Campos da tabela users_posts
  attribute :id_post, :integer
  attribute :id_usuario, :integer
  attribute :descricao_post, :string
  attribute :like, :integer

  # Validações

end
