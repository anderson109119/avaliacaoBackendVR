class Requests

	OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

	# Realizado a cahamada
	def solicitacao_vr
		$resposta_retono_tipo_estabelecimento = HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT", :headers => {"Content-Type" => 'application/json'})
	end
end