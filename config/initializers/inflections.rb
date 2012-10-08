# encoding: UTF-8
# Be sure to restart your server when you modify this file.

ActiveSupport::Inflector.inflections do |inflect|
  #   inflect.plural /^(ox)$/i, '\1en'
  #   inflect.singular /^(ox)en/i, '\1'
  #   inflect.irregular 'person', 'people'
  #  inflect.irregular 'inscricao_campeonato' , 'inscricoes_campeonatos'
  #  inflect.irregular 'participacao_equipe' , 'participacoes_equipes'
  #  inflect.irregular 'partida_equipe' , 'partidas_equipes'
  #  inflect.irregular 'pontuacao_torneio' , 'pontuacoes_torneios'
  inflect.irregular 'jogador' , 'jogadores'
  inflect.irregular 'historico_jogador_clube' , 'historicos_jogador_clube'
  inflect.irregular 'historico_jogador' , 'historicos_jogador'
  inflect.irregular 'participacao' , 'participacoes'
  inflect.irregular 'participaçao' , 'participaçoes'
  inflect.irregular 'participacão' , 'participacões'
  inflect.irregular 'participação' , 'participações'
  inflect.irregular 'foi', 'foram'
  inflect.irregular 'impede', 'impedem'

  inflect.uncountable %w( sistema_id)
end
