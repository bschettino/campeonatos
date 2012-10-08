class CreateHistoricos < ActiveRecord::Migration
  def self.up
    create_table :historicos_jogador_clube do |t|
      t.integer :participacao_id, :null => false
      t.integer :fregues_id
      t.integer :rival_id
      t.integer :gols_marcados, :null => false, :default => 0
      t.integer :gols_sofridos, :null => false, :default => 0
      t.integer :total_chutes, :null => false, :default => 0
      t.integer :chutes_no_alvo, :null => false, :default => 0
      t.integer :posse_bola, :null => false, :default => 0
      t.integer :qtd_jogos, :null => false, :default => 0
      t.integer :faltas_cometidas, :null => false, :default => 0
      t.integer :vitorias, :null => false, :default => 0
      t.integer :derrotas, :null => false, :default => 0
      t.integer :empates, :null => false, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :historicos_jogador_clube
  end
end