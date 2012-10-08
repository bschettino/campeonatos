class PartidaObserver < ActiveRecord::Observer
  observe :partida

  def after_create(partida)
    p1 = partida.participacao_1
    p2 = partida.participacao_2
    h = p1.historico_jogador_clube
    h2 = p2.historico_jogador_clube
    hj = HistoricoJogador.por_jogador_id(h.participacao.jogador_id).first
    hj2 = HistoricoJogador.por_jogador_id(h2.participacao.jogador_id).first

    unless h.nil? || h2.nil? || hj.nil? || hj2.nil?
      h.qtd_jogos +=1
      hj.qtd_jogos +=1
      h2.qtd_jogos +=1
      hj2.qtd_jogos +=1
      h.gols_marcados += partida.gols_p1
      hj.gols_marcados += partida.gols_p1
      h2.gols_marcados += partida.gols_p2
      hj2.gols_marcados += partida.gols_p2
      h.gols_sofridos += partida.gols_p2
      hj.gols_sofridos += partida.gols_p2
      h2.gols_sofridos += partida.gols_p1
      hj2.gols_sofridos += partida.gols_p1
      h.total_chutes += partida.total_chutes_p1
      hj.total_chutes += partida.total_chutes_p1
      h2.total_chutes += partida.total_chutes_p2
      hj2.total_chutes += partida.total_chutes_p2
      h.chutes_no_alvo += partida.chutes_no_alvo_p1
      hj.chutes_no_alvo += partida.chutes_no_alvo_p1
      h2.chutes_no_alvo += partida.chutes_no_alvo_p2
      hj2.chutes_no_alvo += partida.chutes_no_alvo_p2
      h.posse_bola += partida.posse_bola_p1
      hj.posse_bola += partida.posse_bola_p1
      h2.posse_bola += partida.posse_bola_p2
      hj2.posse_bola += partida.posse_bola_p2
      h.faltas_cometidas += partida.faltas_cometidas_p1
      hj.faltas_cometidas += partida.faltas_cometidas_p1
      h2.faltas_cometidas += partida.faltas_cometidas_p2
      hj2.faltas_cometidas += partida.faltas_cometidas_p2
      if partida.gols_p1 > partida.gols_p2
        h.vitorias += 1
        hj.vitorias += 1
        h2.derrotas += 1
        hj2.derrotas += 1
      else
        if partida.gols_p1 == partida.gols_p2
          h.empates += 1
          hj.empates += 1
          h2.empates += 1
          hj2.empates += 1
        else
          h.derrotas += 1
          hj.derrotas += 1
          h2.vitorias += 1
          hj2.vitorias += 1
        end
      end
      h.save
      hj.save
      h2.save
      hj2.save
    end

  end
end
