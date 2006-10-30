class TariffHistory < ActiveRecord::Base
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :charge_category, :class_name => 'ChargeCategory', :foreign_key => :charge_category_id
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  validates_presence_of :tariff_id
  validates_numericality_of :tariff_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :tariff_name
  validates_length_of :tariff_name, :allow_nil => false, :maximum => 67
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :tariff_class_code, :allow_nil => true, :only_integer => true
  validates_presence_of :tariff_type_code
  validates_numericality_of :tariff_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :tariff_status_code
  validates_numericality_of :tariff_status_code, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 30
  validates_numericality_of :default_priority, :allow_nil => true, :only_integer => true
  validates_numericality_of :master_tariff_id, :allow_nil => true, :only_integer => true
  validates_presence_of :billable_ind_code
  validates_numericality_of :billable_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :dont_display_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :context_code
  validates_numericality_of :context_code, :allow_nil => false, :only_integer => true
  validates_presence_of :application_env_code
  validates_numericality_of :application_env_code, :allow_nil => false, :only_integer => true
  validates_presence_of :nr_conditions
  validates_numericality_of :nr_conditions, :allow_nil => false, :only_integer => true
  validates_presence_of :nr_charge_components
  validates_numericality_of :nr_charge_components, :allow_nil => false, :only_integer => true
  validates_length_of :key_substitution_expr, :allow_nil => true, :maximum => 255
  validates_length_of :key_variable_name, :allow_nil => true, :maximum => 66
  validates_numericality_of :eligibility_expression_list_id, :allow_nil => true, :only_integer => true
  validates_presence_of :default_charge_expr
  validates_length_of :default_charge_expr, :allow_nil => false, :maximum => 255
  validates_length_of :charge_expr, :allow_nil => true, :maximum => 255
  validates_presence_of :default_invoice_txt
  validates_length_of :default_invoice_txt, :allow_nil => false, :maximum => 255
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_length_of :currency_expr, :allow_nil => true, :maximum => 255
  validates_presence_of :suppress_zero_ind_code
  validates_numericality_of :suppress_zero_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :global_event_apply_ind_code
  validates_numericality_of :global_event_apply_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :service_not_found_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :charge_category_id
  validates_numericality_of :charge_category_id, :allow_nil => false, :only_integer => true
  validates_length_of :to_account_id_expr, :allow_nil => true, :maximum => 255
  validates_length_of :from_account_id_expr, :allow_nil => true, :maximum => 255
  validates_length_of :to_gl_code_id_expr, :allow_nil => true, :maximum => 255
  validates_length_of :from_gl_code_id_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :receivable_type_id, :allow_nil => true, :only_integer => true
  validates_length_of :receivable_type_expr, :allow_nil => true, :maximum => 255
  validates_presence_of :invoice_section_nr
  validates_numericality_of :invoice_section_nr, :allow_nil => false, :only_integer => true
  validates_numericality_of :assignment_expression_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :account_aggregate_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :account_check_expr, :allow_nil => true, :maximum => 255
end
