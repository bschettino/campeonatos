class AddAttachmentFotoToJogador < ActiveRecord::Migration
  def self.up
    add_column :jogadores, :foto_file_name, :string
    add_column :jogadores, :foto_content_type, :string
    add_column :jogadores, :foto_file_size, :integer
    add_column :jogadores, :foto_updated_at, :datetime
  end

  def self.down
    remove_column :jogadores, :foto_file_name
    remove_column :jogadores, :foto_content_type
    remove_column :jogadores, :foto_file_size
    remove_column :jogadores, :foto_updated_at
  end
end
