Feature: Manage contact
  In order to manage my contacts
  As a all users
  I want to be able to create, update and remove contacts


	Scenario: Create a new phone
    Given I am on the homepage
		When I follow "Criar Contato"
		And I fill in "contact_description" with "mobile"
		And I fill in "contact_info" with "(55) 11 12345678"
		And I press "Salvar"
	  Then I should see "Criação de Contato realizada com sucesso"
		And I should see "(55) 11 12345678"
	
	Scenario: Edit a phone
		Given I have a new contact with info "55 11 909080"
		And I am on the homepage
		And I follow "55 11 909080"
		And I should see "55 11 909080"
		When I follow "Alterar"
		And I fill in "contact_info" with "(55) 11 909080"
		And I press "Salvar"
		Then I should see "Alteração de Contato realizada com sucesso"
		And I should see "(55) 11 909080"
		
	Scenario: Associate phone a group
	  Given I have a new contact with info "55 11 909080"
		And I have a new group with name "ruck.com.br"
		And I am on the homepage
		And I follow "55 11 909080"
		And I should see "55 11 909080"
		When I follow "Associar a Grupo"
		And I fill in "contact_group_name" with "ruck.com.br"
		And I press "Salvar"
		Then I should see "Contato associado a Grupo com sucesso"
		And I should see "55 11 909080"
		And I should see "Grupos Associados"
		And I should see "ruck.com.br"
	
	
	
	
	
	