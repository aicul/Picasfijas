class Picas

INTENTOS=10
@intentos = 0

	def initialize 
		@picas = 0
		@fijas = 0
		@intentos = 1
	end

	def validar numero1, numero2

	arr1 = numero1.chars.to_a
	arr2 = numero2.chars.to_a
	
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
				 "GAME OVER"
			elsif @fijas == dimensionar(numero1)
				"YOU WIN"
			else
				"#{numero2} - #{@fijas}F #{@picas}P <br>"
			end
		else
			"#{numero2} - NO VALIDA <br>"
		end
	
	end

	def dimensionar palabra
		"#{palabra.size}"
	end	

	def intentos 
		intentos = (INTENTOS - @intentos).to_s
		"#{intentos}"
	end	

	def verificar numero		
		i=0
		j=0
		numero.each do |a| 
			i = i + 1
			j= 0
			numero.each do |b| 
				j= j + 1
				if a==b && i!=j
					return true
				end
			end
		end
		return false
	end

end