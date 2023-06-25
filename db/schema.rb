# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_21_182504) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acesso_usuarios", id: false, force: :cascade do |t|
    t.string "username", limit: 50
    t.integer "password"
    t.string "nivel_acesso", limit: 10
  end

  create_table "amostras_biorepositorio", primary_key: "numero_amostra", id: :bigint, default: nil, force: :cascade do |t|
    t.date "data_coleta"
    t.string "id_projeto", limit: 50
    t.string "resp_cadastro", limit: 100
    t.string "nome_paciente", limit: 500
    t.integer "cpf"
    t.integer "rg"
    t.string "nome_coletora", limit: 100
    t.string "projeto", limit: 50
    t.string "tipo_material", limit: 30
    t.string "posicao", limit: 2
    t.integer "caixa"
    t.bigint "contato"
    t.string "lab_destino", limit: 50
    t.string "volume", limit: 50
  end

  create_table "caixas_freezer", primary_key: "codigo", id: :integer, default: nil, force: :cascade do |t|
    t.string "tipo_amostra", limit: 10
    t.string "gaveta", limit: 10
    t.string "freezer", limit: 10
    t.string "projeto", limit: 50
    t.string "reponsavel_coleta", limit: 50
    t.string "reponsavel_cadastro", limit: 50
  end

  create_table "user_posts", force: :cascade do |t|
    t.integer "id_post"
    t.integer "id_usuario"
    t.string "descricao_post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_posts", primary_key: "id_post", id: :serial, force: :cascade do |t|
    t.integer "id_usuario"
    t.string "descricao_post", limit: 1000
  end

end
