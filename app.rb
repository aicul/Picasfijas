require 'sinatra'
require './config'
require './lib/Picas.rb'


get '/' do
	session["secreto"] = "murcielago"
	session["numeros"] = ""
	session["intentos"] = 10
	
	erb(:index)
end

post '/iniciar' do
	picas = Picas.new	
	session["pista"] = picas.dimensionar session["secreto"]
	erb(:juego)
end

post '/validar' do
	picas = Picas.new	
	session["numeros"] +=  (picas.validar session["secreto"], params["numero"]).to_s
	session["intentos"] = session["intentos"] - 1
	erb(:juego)
end

