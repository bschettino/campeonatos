class Participacao < ActiveRecord::Base
  
  belongs_to :jogador
  belongs_to :clube
  has_one :historico_jogador_clube
  has_many :partidas

    scope :por_jogador_id, lambda { |jogador|
    where(:jogador_id => jogador)
  }

    scope :por_clube_id, lambda { |clube|
    where(:clube_id => clube)
  }
  
end
