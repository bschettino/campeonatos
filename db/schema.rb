# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120421030059) do

  create_table "campeonatos", :force => true do |t|
    t.string   "nome"
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubes", :force => true do |t|
    t.string   "nome",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historicos_jogador", :force => true do |t|
    t.integer  "jogador_id",                      :null => false
    t.integer  "fregues_id"
    t.integer  "rival_id"
    t.integer  "gols_marcados",    :default => 0, :null => false
    t.integer  "gols_sofridos",    :default => 0, :null => false
    t.integer  "total_chutes",     :default => 0, :null => false
    t.integer  "chutes_no_alvo",   :default => 0, :null => false
    t.integer  "posse_bola",       :default => 0, :null => false
    t.integer  "qtd_jogos",        :default => 0, :null => false
    t.integer  "faltas_cometidas", :default => 0, :null => false
    t.integer  "vitorias",         :default => 0, :null => false
    t.integer  "derrotas",         :default => 0, :null => false
    t.integer  "empates",          :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historicos_jogador_clube", :force => true do |t|
    t.integer  "participacao_id",                 :null => false
    t.integer  "fregues_id"
    t.integer  "rival_id"
    t.integer  "gols_marcados",    :default => 0, :null => false
    t.integer  "gols_sofridos",    :default => 0, :null => false
    t.integer  "total_chutes",     :default => 0, :null => false
    t.integer  "chutes_no_alvo",   :default => 0, :null => false
    t.integer  "posse_bola",       :default => 0, :null => false
    t.integer  "qtd_jogos",        :default => 0, :null => false
    t.integer  "faltas_cometidas", :default => 0, :null => false
    t.integer  "vitorias",         :default => 0, :null => false
    t.integer  "derrotas",         :default => 0, :null => false
    t.integer  "empates",          :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jogadores", :force => true do |t|
    t.string   "nome",              :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "participacoes", :force => true do |t|
    t.integer  "jogador_id", :null => false
    t.integer  "clube_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partidas", :force => true do |t|
    t.integer  "participacao_1_id",   :null => false
    t.integer  "participacao_2_id",   :null => false
    t.integer  "gols_p1",             :null => false
    t.integer  "gols_p2",             :null => false
    t.integer  "total_chutes_p1",     :null => false
    t.integer  "total_chutes_p2",     :null => false
    t.integer  "chutes_no_alvo_p1",   :null => false
    t.integer  "chutes_no_alvo_p2",   :null => false
    t.integer  "posse_bola_p1",       :null => false
    t.integer  "posse_bola_p2",       :null => false
    t.integer  "faltas_cometidas_p1", :null => false
    t.integer  "faltas_cometidas_p2", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campeonato_id"
  end

end
