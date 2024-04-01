class Comum

	def validar_typeOfEstablishment
		
	# Abaixo 3 formas de fazer a validação da chave
	# Exibição da chave e tipo de estabelecimento
	  resposta_retorno_typeOfEstablishment = JSON.parse($resposta_retono_tipo_estabelecimento.body)
	  conveter_resposta_retorno_typeOfEstablishment = resposta_retorno_typeOfEstablishment.to_s
	  if conveter_resposta_retorno_typeOfEstablishment.include? "typeOfEstablishment" then nil else raise "Não retornou a chave typeOfEstablishment" end
	  # Ou
	  resposta_retorno_substring_typeOfEstablishment = conveter_resposta_retorno_typeOfEstablishment.slice(7982..8002)	
	  retorno_char_removed_typeOfEstablishment = resposta_retorno_substring_typeOfEstablishment.tr('"','')
	  if retorno_char_removed_typeOfEstablishment.eql? "typeOfEstablishment" then nil else raise "Não retornou a chave typeOfEstablishment" end
	  # Ou
	  find_resposta_retorno_typeOfEstablishment = conveter_resposta_retorno_typeOfEstablishment.scan((/typeOfEstablishment/))
	  abstrair_resposta_retorno_typeOfEstablishment = find_resposta_retorno_typeOfEstablishment[0]
	  if abstrair_resposta_retorno_typeOfEstablishment.eql? "typeOfEstablishment" then nil else raise "Não retornou a chave typeOfEstablishment" end
	  puts "A chave é: #{abstrair_resposta_retorno_typeOfEstablishment}"
	  resposta_retorno_tipo_estabelecimento_pizzaria = JSON.parse($resposta_retono_tipo_estabelecimento.body)['typeOfEstablishment'][0]
	  puts "O tipo de estabelecimento refeição/pizzaria: #{resposta_retorno_tipo_estabelecimento_pizzaria}"
	end

	# Os métodos abaixo validam string, tomando como base suas substrings e trabalhando com arrays
	def estrutura

		itens = ["bananas,tomates # e ventiladores"]
		$str = itens.join(";")
	end

	def retorno_itens

		sub_itens = $str[0, $str.length - 17]

		if "bananas,tomates".eql? sub_itens then nil else raise p "Item procurado não foi encontrado" end

		p "Os sub itens são: #{sub_itens}"
	end

	def estrutura_cenario2
		itens_cenario2 = ["o rato roeu a roupa $ do rei % de roma"]
		$str2 = itens_cenario2.join(";")
	end

	def retorno_itens2

		sub_itens2 = $str2[0, $str2.length - 10]

		if "o rato roeu a roupa $ do rei".eql? sub_itens2 then nil else raise p "Item procurado não foi encontrado" end

		p "Os sub itens são: #{sub_itens2}"
	end

	def estrutura_cenario3
		itens_cenario3 = ["the quick brown fox & jumped over * the lazy dog"]
		$str3 = itens_cenario3.join(";")
	end

	def retorno_itens3

		sub_itens3 = $str3[0, $str3.length - 29]

		if "the quick brown fox".eql? sub_itens3 then nil else raise p "Item procurado não foi encontrado" end

		p "Os sub itens são: #{sub_itens3}"
	end
end