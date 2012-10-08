class CreateParticipacoes < ActiveRecord::Migration
  def self.up
    create_table :participacoes do |t|
      t.integer :jogador_id, :null => false
      t.integer :clube_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :participacoes
  end
end