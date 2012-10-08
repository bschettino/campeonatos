class CreateCampeonatos < ActiveRecord::Migration
  def self.up
    create_table :campeonatos do |t|
      t.string :nome
      t.date :data

      t.timestamps
    end
     add_column :partidas, :campeonato_id, :integer

  end

  def self.down
    drop_table :campeonatos
    remove_collumn :partidas, :campeonato_id
  end
end
