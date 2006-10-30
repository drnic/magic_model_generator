class AtlantaProfileRoleMap < ActiveRecord::Base
  belongs_to :atlanta_profile, :class_name => 'AtlantaProfile', :foreign_key => :atlanta_profile_id
  belongs_to :atlanta_role, :class_name => 'AtlantaRole', :foreign_key => :atlanta_role_id
  validates_presence_of :atlanta_profile_id
  validates_numericality_of :atlanta_profile_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_role_id
  validates_numericality_of :atlanta_role_id, :allow_nil => false, :only_integer => true
end
