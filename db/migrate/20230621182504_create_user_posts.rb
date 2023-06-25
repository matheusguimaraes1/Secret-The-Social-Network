class CreateUserPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_posts do |t|
      t.integer :id_post
      t.integer :id_usuario
      t.string :descricao_post

      t.timestamps
    end
  end
end
