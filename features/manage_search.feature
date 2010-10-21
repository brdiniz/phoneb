Feature: Manage search
  In order to manage my contacts
  As a all users
  I want to search things and go to the page of these things

	Scenario: Search for a group
	  Given I have a contact with info "55 11 405060" with associate in group "group_search-10"
		And I have a new group with name "group_search-12"
		When I am on the homepage
    And I fill in "search_text" with "group_search-1"
		And I press "Buscar"
		And I should see "Resultado da Busca"
		And I should see "Grupo: group_search-10"
		And I should see "Grupo: group_search-12"
		And I follow "group_search-10"
	  Then I should see "Grupos"
		And I should see "Alterar"
	
	
	