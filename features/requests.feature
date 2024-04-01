#encoding: utf-8
#language: pt

  Funcionalidade: Valida retorno de tipo de estabelecimento
    
    VR
    Teste
    Relatório de Automação de Testes
    Data de execução: 29/03/2024

    Eu como usuário
    Quero enviar pedidos para o VRPAT
    Para validar retorno de tipo de estabelecimento

      @retorna_typeofEstablishment
      Cenário: Validar se o serviço retona a chave tipo de estabelecimento
        Dado que eu realize uma solicitação para VR
        Quando receber a resposta da solicitação enviada para VR
        Então vejo que o serviço retornou a chave typeofEstablishment

      @retorna_dados_especificos_string
      Cenário: Validar se o método retorna dados específicos de uma string
        Dado a string de entrada bananas, tomates e ventiladores        
        Então a saída esperada é: bananas, tomates

      @retorna_dados_especificos_segunda_string
      Cenário: Validar se o método retorna dados específicos de uma segunda string
        Dado a string de entrada o rato roeu a roupa sifrão do rei % de roma
        Então a saída esperada é: o rato roeu a roupa sifrão do rei

      @retorna_dados_especificos_terceira_string
      Cenário: Validar se o método retorna dados específicos de uma terceira string
        Dado a string de entrada the quick brown fox & jumped over asterisco the lazy dog
        Então a saída esperada é: the quick brown fox
