Feature: Manage group
  In order to manage my groups
  As a all users
  I want to be able to create, update and remove groups

	Scenario: Create a new group
    Given I am on the homepage
		And I follow "Meus Grupos"
		When I follow "Criar Grupo"
		And I fill in "group_name" with "schedul"
		And I press "Salvar"
	  Then I should see "Criação de Grupo realizada com sucesso"
		And I should see "schedul"
		
		Scenario: Edit a group
			Given I have a new group with name "group_1"
			And I am on the homepage
			And I follow "Meus Grupos"
			And I follow "group_1"
			And I should see "group_1"
			When I follow "Alterar"
			And I fill in "group_name" with "nome do novo grupo"
			And I press "Salvar"
			Then I should see "Alteração de Grupo realizada com sucesso"
			And I should see "nome do novo grupo"
	
	
	
	
	
	