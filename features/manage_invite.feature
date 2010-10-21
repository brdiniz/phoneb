Feature: Manage invite
  In order to manage my invites
  As a all invites
  I want to be able to create, update and remove invites

	Scenario: Create a new invite
	  Given I have a contact with info "55 11 405060" with associate in group "group_search-10"
		And I have a new contact with info "diniz.bd@gmail.com"
	  When I am on the homepage
		And I fill in "search_text" with "group_search-10"
		And I press "Buscar"
		And I follow "Associar"
		And I fill in "invite_contact_info" with "diniz.bd@gmail.com"
		And I press "Salvar"
	  Then I should see "Criação de Convite realizada com sucesso"
		And I should see "diniz.bd@gmail.com"
	
	
	
