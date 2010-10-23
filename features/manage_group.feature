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
		
	Scenario: Approve a invite in my group
	  Given I have a new group with name "group_1"
		And I have a invite with contact "(11)123456789" in group "group_1"
	  And I am on the homepage
		And I follow "Meus Grupos"
		When I follow "group_1"
		And I should see "Convites Pendentes"
	  And I should see "(11)123456789"
		And I follow "Aprovar"
		Then I should see "Alteração de Convite realizada com sucesso"
		And I should see "(11)123456789"
		And I should not see "Convites Pendentes"
		
	Scenario: Disapprove a invite in my group
	  Given I have a new group with name "group_1"
		And I have a invite with contact "(11)123456789" in group "group_1"
	  And I am on the homepage
		And I follow "Meus Grupos"
		When I follow "group_1"
		And I should see "Convites Pendentes"
	  And I should see "(11)123456789"
		And I follow "Reprovar"
		Then I should see "Exclusão de Convite realizada com sucesso"
		And I should not see "(11)123456789"
		And I should not see "Convites Pendentes"