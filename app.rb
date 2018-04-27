require 'sinatra'
require './config'
require './lib/Picas.rb'


get '/' do
	session["secreto"] = "murcielago"
	session["numeros"] = ""
<<<<<<< HEAD
	session["intentos"] = 10
	
=======
	session["picas"] = Picas.new	
>>>>>>> d5fc0a1c7cc1d540101c6abf2eab5e0f70dec58b
	erb(:index)
end

post '/iniciar' do	
	session["pista"] = session["picas"].dimensionar session["secreto"]
	erb(:juego)
end

post '/validar' do
	picas = Picas.new	
<<<<<<< HEAD
	session["numeros"] +=  (picas.validar session["secreto"], params["numero"]).to_s
	session["intentos"] = session["intentos"] - 1
=======
	session["numeros"] +=  (session["picas"].validar session["secreto"], params["numero"]).to_s	
>>>>>>> d5fc0a1c7cc1d540101c6abf2eab5e0f70dec58b
	erb(:juego)
end

