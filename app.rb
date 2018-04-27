require 'sinatra'
require './config'
require './lib/Picas.rb'


get '/' do
	session["numero1"] = "murcielago"
	session["numeros"] = ""
	erb(:index)
end

get '/iniciar' do
	session["numero1"] = "murcielago"
	session["numeros"] = ""
	erb(:juego)
end

post '/validar' do
	picas = Picas.new	
	session["numeros"] +=  (picas.validar session["numero1"], params["numero"]).to_s
	erb(:juego)
end