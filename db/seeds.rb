# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

clubes = [
  {:nome => "Milan"},
  {:nome => "Real Madrid"},
  {:nome => "Barcelona"},
  {:nome => "Manchester United"},
  {:nome => "Chelsea"},
  {:nome => "Inter de Milão"},
  {:nome => "Bayern de Munique"}
]

Clube.create! clubes

#salt_brunin = BCrypt::Engine.generate_salt
#salt_dudu = BCrypt::Engine.generate_salt
#salt_bernardo = BCrypt::Engine.generate_salt
#
#hash_brunin = BCrypt::Engine.hash_secret("manolos", salt_brunin)
#hash_dudu = BCrypt::Engine.hash_secret("manolos", salt_dudu)
#hash_bernardo = BCrypt::Engine.hash_secret("manolos", salt_bernardo)

#jogadores = [
#  {:nome => "Brunin", :login => "bschettino@id.uff.br",  :email => "bschettino@id.uff.br", :password_hash => hash_brunin, :password_salt => salt_brunin},
#  {:nome => "Bernardo", :login => "bernardoilustra@gmail.com", :email => "bernardoilustra@gmail.com", :password_hash => hash_bernardo, :password_salt => salt_bernardo},
#  {:nome => "Dudu", :login => "dudu.antro@gmail.com", :email => "dudu.antro@gmail.com", :password_hash => hash_dudu, :password_salt => salt_dudu}
#]
jogadores = [
  {:nome => "Brunin"},
  {:nome => "Bernardo"},
  {:nome => "Dudu"}
]

Jogador.create! jogadores

