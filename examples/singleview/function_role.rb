class FunctionRole < ActiveRecord::Base
  belongs_to :function_role, :class_name => 'FunctionRole', :foreign_key => :function_role_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atlanta_profile_func_maps, :class_name => 'AtlantaProfileFuncMap', :foreign_key => :function_role_id
  has_many :function_roles, :class_name => 'FunctionRole', :foreign_key => :function_role_id
  has_many :function_role_maps, :class_name => 'FunctionRoleMap', :foreign_key => :function_role_id
  has_many :atlanta_profiles, :through => atlanta_profile_func_maps
  has_many :atlanta_groups, :through => function_roles
  has_many :atlanta_operators, :through => function_roles
  has_many :function_defns, :through => function_role_maps
  validates_presence_of :function_role_id
  validates_numericality_of :function_role_id, :allow_nil => false, :only_integer => true
  validates_presence_of :function_role_name
  validates_length_of :function_role_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
