class CreatePartidas < ActiveRecord::Migration
  def self.up
    create_table :partidas do |t|
      t.integer :participacao_1_id, :null => false
      t.integer :participacao_2_id, :null => false
      t.integer :gols_p1, :null => false
      t.integer :gols_p2, :null => false
      t.integer :total_chutes_p1, :null => false
      t.integer :total_chutes_p2, :null => false
      t.integer :chutes_no_alvo_p1, :null => false
      t.integer :chutes_no_alvo_p2, :null => false
      t.integer :posse_bola_p1, :null => false
      t.integer :posse_bola_p2, :null => false
      t.integer :faltas_cometidas_p1, :null => false
      t.integer :faltas_cometidas_p2, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :partidas
  end
end
