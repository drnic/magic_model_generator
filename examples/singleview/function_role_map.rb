class FunctionRoleMap < ActiveRecord::Base
  belongs_to :function_role, :class_name => 'FunctionRole', :foreign_key => :function_role_id
  belongs_to :function_defn, :class_name => 'FunctionDefn', :foreign_key => :function_defn_id
  validates_presence_of :function_role_id
  validates_numericality_of :function_role_id, :allow_nil => false, :only_integer => true
  validates_presence_of :function_defn_id
  validates_numericality_of :function_defn_id, :allow_nil => false, :only_integer => true
  validates_presence_of :invoke_function_defn_id
  validates_numericality_of :invoke_function_defn_id, :allow_nil => false, :only_integer => true
end
