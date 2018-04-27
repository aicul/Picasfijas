require 'sinatra'
require './config'
require './lib/Picas.rb'


get '/' do
	
	session["numeros"] = ""
	session["intentos"] = 10	
	session["picas"] = Picas.new	

	erb(:index)
end

post '/iniciar' do	
	if params["nivel"] == "Bajo"
		session["secreto"] = "tres"
	elsif params["nivel"] == "Medio"
		session["secreto"] = "cuanto"
	else
		session["secreto"] = "formidable"
	end
	session["pista"] = session["picas"].dimensionar session["secreto"]
	erb(:juego)
end

post '/validar' do
	picas = Picas.new	
	session["intentos"] = (session["picas"].intentos).to_i - 1
	session["numeros"] +=  (session["picas"].validar session["secreto"], params["numero"]).to_s	
	erb(:juego)
end

