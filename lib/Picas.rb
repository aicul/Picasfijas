class Picas

INTENTOS = 10
@intentos = 0

	def initialize 
		@picas = 0
		@fijas = 0
		@intentos = 0
	end

	def validar numero1, numero2

		mensaje =""
		@picas = 0
		@fijas = 0
		arr1 = numero1.chars.to_a
		arr2 = numero2.chars.to_a
	
	if longitud(numero1, numero2) != true
			if verificar(arr2) != true			
				i=0
				j=0

				arr1.each do |a| 
					i = i + 1
					j= 0
					arr2.each do |b| 
						j= j + 1
						if a==b && i == j
							@fijas =@fijas +1
						elsif a==b && i != j
							@picas=@picas +1
						end
					end
				end		

				@intentos = @intentos + 1 

				if @intentos >= INTENTOS
					return "GAME OVER"
				end

				if @fijas == dimensionar(numero1)
					mensaje = "YOU WIN"
				else
					mensaje = "#{numero2} - #{@fijas}F #{@picas}P <br>"
				end	

							
			else
				mensaje = "#{numero2} - NO VALIDA <br>"
			end
		else
			mensaje = "#{numero2} - NO VALIDA <br>"
		end

		

		return mensaje
	end

	def dimensionar palabra
		palabra.size
	end	

	def intentos 
		return (INTENTOS - @intentos).to_s		
	end	

	
	def verificar palabra	
		
			i=0
			j=0
			palabra.each do |a| 
				i = i + 1
				j= 0
				palabra.each do |b| 
					j= j + 1
					if a==b && i!=j
						return true
					end
				end
			end
			return false	
	end

	def longitud secreto, palabra	

		if secreto.size == palabra.size			
			return false
		else
			return true
		end
	end
end