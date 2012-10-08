class CreateClubes < ActiveRecord::Migration
  def self.up
    create_table :clubes do |t|
      t.string :nome, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :clubes
  end
end