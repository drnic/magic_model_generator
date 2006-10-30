class FunctionDefn < ActiveRecord::Base
  belongs_to :function_defn, :class_name => 'FunctionDefn', :foreign_key => :function_defn_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  has_many :function_defns, :class_name => 'FunctionDefn', :foreign_key => :function_defn_id
  has_many :function_defn_histories, :class_name => 'FunctionDefnHistory', :foreign_key => :function_defn_id
  has_many :function_role_maps, :class_name => 'FunctionRoleMap', :foreign_key => :function_defn_id
  has_many :variable_defns, :through => function_defns
  has_many :atlanta_groups, :through => function_defn_histories
  has_many :atlanta_operators, :through => function_defn_histories
  has_many :function_roles, :through => function_role_maps
  validates_presence_of :function_defn_id
  validates_numericality_of :function_defn_id, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
