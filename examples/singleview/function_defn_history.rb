class FunctionDefnHistory < ActiveRecord::Base
  belongs_to :function_defn, :class_name => 'FunctionDefn', :foreign_key => :function_defn_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :function_defn_id
  validates_numericality_of :function_defn_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :function_defn_name
  validates_length_of :function_defn_name, :allow_nil => false, :maximum => 67
  validates_presence_of :interface_nr
  validates_numericality_of :interface_nr, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :remote_call_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :remote_notrans_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :remote_notime_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :remote_alias_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :remote_queuespace_name, :allow_nil => true, :maximum => 15
  validates_length_of :remote_service_name, :allow_nil => true, :maximum => 30
  validates_presence_of :application_env_code
  validates_numericality_of :application_env_code, :allow_nil => false, :only_integer => true
  validates_presence_of :context_code
  validates_numericality_of :context_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :builtin_function_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :deterministic_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :function_defn_txt
end
