require 'sinatra'
require './config'
require './lib/Picas.rb'


get '/' do
	session["secreto"] = "murcielago"
	session["numeros"] = ""
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
	erb(:juego)
end