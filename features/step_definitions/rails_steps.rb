Given /^a new Rails application$/ do
  Given "a safe folder"
  setup_active_project_folder 'my_project'
  Given "run executable 'rails' with arguments '.'"
end