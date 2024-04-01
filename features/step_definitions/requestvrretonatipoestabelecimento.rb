Dado (/^que eu realize uma solicitação para VR$/) do

	$comum=Comum.new
	@request=Requests.new
	@request.solicitacao_vr
end

Quando (/^receber a resposta da solicitação enviada para VR$/) do

	retorno_typeOfEstablishment = JSON.parse($resposta_retono_tipo_estabelecimento.body)
	puts "O retorno da chamada é: #{retorno_typeOfEstablishment}"
end

Então (/^vejo que o serviço retornou a chave typeofEstablishment$/) do

	$comum.validar_typeOfEstablishment
end

Dado (/^a string de entrada bananas, tomates e ventiladores$/) do

	$comum=Comum.new
	$comum.estrutura
end

Então (/^a saída esperada é: bananas, tomates$/) do
	$comum.retorno_itens
end

Dado (/^a string de entrada o rato roeu a roupa sifrão do rei % de roma$/) do

	$comum=Comum.new
	$comum.estrutura_cenario2
end

Então (/^a saída esperada é: o rato roeu a roupa sifrão do rei$/) do
	$comum.retorno_itens2
end

Dado (/^a string de entrada the quick brown fox & jumped over asterisco the lazy dog$/) do
	
	$comum=Comum.new
	$comum.estrutura_cenario3
end

Então (/^a saída esperada é: the quick brown fox$/) do
	$comum.retorno_itens3
end