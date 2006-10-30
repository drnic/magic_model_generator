class VariableDefnHistory < ActiveRecord::Base
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_defn_name
  validates_length_of :variable_defn_name, :allow_nil => false, :maximum => 73
  validates_presence_of :last_modified
  validates_numericality_of :atlanta_operator_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :atlanta_group_id, :allow_nil => true, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_type_code
  validates_numericality_of :variable_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :context_code
  validates_numericality_of :context_code, :allow_nil => false, :only_integer => true
  validates_presence_of :application_env_code
  validates_numericality_of :application_env_code, :allow_nil => false, :only_integer => true
end
