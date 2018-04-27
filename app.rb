require 'sinatra'
require './config'
require './lib/Picas.rb'


get '/' do
	session["secreto"] = "murcielago"
	session["numeros"] = ""
	session["picas"] = Picas.new	
	erb(:index)
end

post '/iniciar' do	
	session["pista"] = session["picas"].dimensionar session["secreto"]
	erb(:juego)
end

post '/validar' do
	picas = Picas.new	
	session["numeros"] +=  (session["picas"].validar session["secreto"], params["numero"]).to_s	
	erb(:juego)
end