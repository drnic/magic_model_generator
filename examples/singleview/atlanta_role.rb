class AtlantaRole < ActiveRecord::Base
  belongs_to :atlanta_role, :class_name => 'AtlantaRole', :foreign_key => :atlanta_role_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atlanta_profile_role_maps, :class_name => 'AtlantaProfileRoleMap', :foreign_key => :atlanta_role_id
  has_many :atlanta_roles, :class_name => 'AtlantaRole', :foreign_key => :atlanta_role_id
  has_many :menu_role_maps, :class_name => 'MenuRoleMap', :foreign_key => :atlanta_role_id
  has_many :atlanta_profiles, :through => atlanta_profile_role_maps
  has_many :atlanta_groups, :through => atlanta_roles
  has_many :atlanta_operators, :through => atlanta_roles
  validates_presence_of :atlanta_role_id
  validates_numericality_of :atlanta_role_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_role_name
  validates_length_of :atlanta_role_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
