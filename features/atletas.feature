Feature: Atleta
	As a supervisor cadastrado no sistema.
	I want adicionar, remover, atualizar e classificar atletas.
	So that eu possa gerar páginas da web e relatórios contendo as informações dos atletas

	Scenario: Atualizar dados de um Atleta que não está no sistema 
		Given eu estou na página de atualização de atleta
		And eu quero atualizar os dados o atleta com o cpf “09934567391” que não está cadastrado no sistema
		When eu busco os dados atualizados do atleta
		Then  aparecerá uma mensagem  “O atleta não existe no sistema”

	Scenario: Atualizar dados web de atleta existente 
		Given Eu estou na página de atualização de atleta
		And O atleta com o cpf “12190871234” está cadastrado no sistema
		When eu seleciono para ver o atleta com o cpf “12190871234” 
		And eu mudo dados do atleta
		And eu seleciono a opção “Atualizar”
		Then eu verei os dados atualizados