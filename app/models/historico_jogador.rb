class HistoricoJogador < ActiveRecord::Base
  
  belongs_to :jogador

  scope :por_jogador_id, lambda { |jogador|
    where(:jogador_id => jogador)
  }
  
end
