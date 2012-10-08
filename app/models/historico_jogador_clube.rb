class HistoricoJogadorClube < ActiveRecord::Base
  
  belongs_to :participacao

  scope :por_clube_id, lambda { |clube|
    joins(:participacao).where(:participacoes => {:clube_id => clube})
  }

  scope :por_jogador_id, lambda { |jogador|
    joins(:participacao).where(:participacoes => {:jogador_id => jogador})
  }
  
end
