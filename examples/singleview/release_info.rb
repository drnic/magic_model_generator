class ReleaseInfo < ActiveRecord::Base
  validates_presence_of :module_name
  validates_length_of :module_name, :allow_nil => false, :maximum => 64
  validates_presence_of :release_id
  validates_length_of :release_id, :allow_nil => false, :maximum => 30
  validates_presence_of :install_date
  validates_length_of :install_type, :allow_nil => true, :maximum => 30
  validates_length_of :user_name, :allow_nil => true, :maximum => 30
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
