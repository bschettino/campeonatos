class CreateJogadores < ActiveRecord::Migration
  def self.up
    create_table :jogadores do |t|
      t.string :nome, :null => false
#      t.string :email, :null => false
#      t.string :login, :null => false
#      t.string :password_hash, :null => false
#      t.string :password_salt, :null =>false
      t.timestamps
    end
  end

  def self.down
    drop_table :jogadores
  end
end