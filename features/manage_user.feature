Feature: Manage user
  In order to manage my users
  As a all users
  I want to be able to create, update and remove users

	Scenario: Show my diary
	  Given I have a new diary
		And I am on the homepage
		And I should not see "Meus Contatos"
		And I should not see "Meus Grupos"
		And I should see "Gerenciar meus contatos"
		And I should see "Gerenciar meus grupos"
		And I should see "Opções de Bruno Diniz"
		And I should see "Alberto"
		And I should see "Adailton"
		And I should not see "Bruno Diniz" within "#diary #content li"
		When I follow "B"
		And I should not see "Alberto"
		And I should not see "Adailton"
		And I should see "Bruno Diniz"