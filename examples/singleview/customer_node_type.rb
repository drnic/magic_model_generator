class CustomerNodeType < ActiveRecord::Base
  belongs_to :customer_node_type, :class_name => 'CustomerNodeType', :foreign_key => :customer_node_type_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :invoice_format, :class_name => 'InvoiceFormat', :foreign_key => :invoice_format_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  belongs_to :address_format, :class_name => 'AddressFormat', :foreign_key => :address_format_id
  has_many :customer_node_histories, :class_name => 'CustomerNodeHistory', :foreign_key => :customer_node_type_id
  has_many :customer_node_types, :class_name => 'CustomerNodeType', :foreign_key => :customer_node_type_id
  has_many :customer_node_type_ccs, :class_name => 'CustomerNodeTypeCc', :foreign_key => :customer_node_type_id
  has_many :customer_node_type_das, :class_name => 'CustomerNodeTypeDa', :foreign_key => :customer_node_type_id
  has_many :customer_node_type_vars, :class_name => 'CustomerNodeTypeVar', :foreign_key => :customer_node_type_id
  has_many :t2_rep_brr_ts, :class_name => 'T2RepBrrT', :foreign_key => :customer_node_type_id
  has_many :t2_rep_trr_ts, :class_name => 'T2RepTrrT', :foreign_key => :customer_node_type_id
  has_many :t2_rep_ubr_ts, :class_name => 'T2RepUbrT', :foreign_key => :customer_node_type_id
  has_many :atlanta_groups, :through => customer_node_histories
  has_many :customer_nodes, :through => customer_node_histories
  has_many :currencies, :through => customer_node_histories
  has_many :atlanta_operators, :through => customer_node_histories
  has_many :schedules, :through => customer_node_histories
  has_many :gl_codes, :through => customer_node_histories
  has_many :people, :through => customer_node_histories
  has_many :atlanta_groups, :through => customer_node_types
  has_many :icons, :through => customer_node_types
  has_many :address_formats, :through => customer_node_types
  has_many :atlanta_operators, :through => customer_node_types
  has_many :invoice_formats, :through => customer_node_types
  has_many :gl_codes, :through => customer_node_types
  has_many :charge_categories, :through => customer_node_type_ccs
  has_many :derived_attributes, :through => customer_node_type_das
  has_many :variable_defns, :through => customer_node_type_vars
  has_many :task_queues, :through => t2_rep_brr_ts
  has_many :task_queues, :through => t2_rep_trr_ts
  has_many :task_queues, :through => t2_rep_ubr_ts
  validates_presence_of :customer_node_type_id
  validates_numericality_of :customer_node_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :customer_node_type_name
  validates_length_of :customer_node_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_form_code
  validates_numericality_of :customer_form_code, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :default_work_force_id, :allow_nil => true, :only_integer => true
  validates_presence_of :prime_account_type_id
  validates_numericality_of :prime_account_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :prime_account_format_expr
  validates_length_of :prime_account_format_expr, :allow_nil => false, :maximum => 255
  validates_numericality_of :report_level_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_format_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :hierarchy_support_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :credit_rating_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :credit_rating_limit, :allow_nil => true
  validates_numericality_of :credit_limit_currency_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :tax_class_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :payment_method_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :payment_location_code, :allow_nil => true, :only_integer => true
  validates_presence_of :payment_due_period
  validates_numericality_of :payment_due_period, :allow_nil => false, :only_integer => true
  validates_presence_of :payment_due_units_code
  validates_numericality_of :payment_due_units_code, :allow_nil => false, :only_integer => true
  validates_presence_of :early_payment_period
  validates_numericality_of :early_payment_period, :allow_nil => false, :only_integer => true
  validates_presence_of :early_payment_units_code
  validates_numericality_of :early_payment_units_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :sales_channel_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :industry_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :region_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_suppress_bill_cycle_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_suppress_period, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_suppress_period_units_code, :allow_nil => true, :only_integer => true
  validates_presence_of :address_format_id
  validates_numericality_of :address_format_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :customer_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :account_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :contact_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :person_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :search_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :cancel_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
