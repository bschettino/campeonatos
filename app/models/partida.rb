class Partida < ActiveRecord::Base

  belongs_to :participacao_1, :class_name => "Participacao"
  belongs_to :participacao_2, :class_name => "Participacao"
  belongs_to :campeonato
  
end
