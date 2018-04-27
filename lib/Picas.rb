class Picas



	def validar numero1, numero2

	arr1 = numero1.chars.to_a
	arr2 = numero2.chars.to_a

	@picas = 0
	@fijas = 0

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
		"#{numero2} - #{@fijas}F #{@picas}P <br>"

		else
		"#{numero2} - Numero no valido <br>"
		end
	end

	def Dimensionar palabra
		"#{palabra.size}"
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