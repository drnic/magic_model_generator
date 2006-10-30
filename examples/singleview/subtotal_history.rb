class SubtotalHistory < ActiveRecord::Base
  belongs_to :subtotal, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  validates_presence_of :subtotal_id
  validates_numericality_of :subtotal_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :subtotal_name
  validates_length_of :subtotal_name, :allow_nil => false, :maximum => 67
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_presence_of :application_env_code
  validates_numericality_of :application_env_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :master_subtotal_id, :allow_nil => true, :only_integer => true
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :context_code
  validates_numericality_of :context_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_length_of :currency_expr, :allow_nil => true, :maximum => 255
  validates_presence_of :subtotal_status_code
  validates_numericality_of :subtotal_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :eligibility_expression_list_id, :allow_nil => true, :only_integer => true
  validates_length_of :default_invoice_txt, :allow_nil => true, :maximum => 255
  validates_numericality_of :suppress_zero_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :aggregate_function_code
  validates_numericality_of :aggregate_function_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :aggregate_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :do_not_aggregate_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :running_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :retain_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :global_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :total_service_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :dont_store_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :dont_display_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :key_variable_name, :allow_nil => true, :maximum => 66
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
  validates_length_of :gl_code_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_length_of :from_gl_code_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :receivable_type_id, :allow_nil => true, :only_integer => true
  validates_length_of :receivable_type_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :invoice_section_nr, :allow_nil => true, :only_integer => true
  validates_numericality_of :assignment_expression_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :bill_cycle_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :rating_context_access_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :from_date_expr, :allow_nil => true, :maximum => 255
  validates_length_of :to_date_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :rating_access_value_ind_code, :allow_nil => true, :only_integer => true
end
