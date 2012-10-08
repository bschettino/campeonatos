class Jogador < ActiveRecord::Base
  
  attr_accessible :nome, :email, :login, :password, :password_confirmation, :foto
  
  attr_accessor :password
  before_save :encrypt_password
  
  has_many :historicos_jogador_clube
  has_many :participacoes

    has_attached_file :foto, :styles => { :grande => "300x300>", :miniatura => "100x100>", :avatar => "89x103>" }
  
  #  validates_confirmation_of :password
  #  validates :password, :on => :create, :presence => true
  #  validates :email, :presence => true, :uniqueness => true
  #  validates :login, :presence => true, :uniqueness => true
  #
  #has_attached_file :foto, :styles => { :perfil => "89x103>" },
  #                  :url  => "/assets/jogadores/:id/:style/:basename.:extension",
  #                  :path => ":rails_root/public/assets/jogadores/:id/:style/:basename.:extension"
  #
  #validates_attachment_presence :foto
  #validates_attachment_size :foto, :less_than => 2.megabytes
  #validates_attachment_content_type :foto, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
  
  def self.authenticate(login, password)
    user = find_by_login(login)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  
end
