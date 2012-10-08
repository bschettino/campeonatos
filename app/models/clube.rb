class Clube < ActiveRecord::Base
  
  has_many :participacoes
  has_many :historicos_jogador_clube
  

end
