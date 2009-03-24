Feature: Create Rails model files or a fresh rails app
  In order to rapid develop Rails applications against existing databases
  As a Rails developer
  I want a generator to create one model file + test file

  Scenario: Generate models for a Rails project using test/unit for generated tests
    Given a new Rails application
    And the project is wired to an existing database
    When run executable 'script/generate' with arguments 'magic_models'
    Then file 'app/models/person.rb' is created
  
  
  
