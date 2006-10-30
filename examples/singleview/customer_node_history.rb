class CustomerNodeHistory < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :customer_node_type, :class_name => 'CustomerNodeType', :foreign_key => :customer_node_type_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :schedule, :class_name => 'Schedule', :foreign_key => :schedule_id
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :customer_node_type_id
  validates_numericality_of :customer_node_type_id, :allow_nil => false, :only_integer => true
  validates_length_of :primary_identifier, :allow_nil => true, :maximum => 80
  validates_length_of :primary_identifier2, :allow_nil => true, :maximum => 80
  validates_presence_of :node_name
  validates_length_of :node_name, :allow_nil => false, :maximum => 200
  validates_presence_of :node_name_uppercase
  validates_length_of :node_name_uppercase, :allow_nil => false, :maximum => 200
  validates_presence_of :node_name_soundex
  validates_length_of :node_name_soundex, :allow_nil => false, :maximum => 10
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :parent_customer_node_id, :allow_nil => true, :only_integer => true
  validates_presence_of :hierarchy_level
  validates_numericality_of :hierarchy_level, :allow_nil => false, :only_integer => true
  validates_numericality_of :root_customer_node_id, :allow_nil => true, :only_integer => true
  validates_presence_of :customer_node_status_code
  validates_numericality_of :customer_node_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :created_date
  validates_presence_of :person_id
  validates_numericality_of :person_id, :allow_nil => false, :only_integer => true
  validates_presence_of :prime_account_id
  validates_numericality_of :prime_account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :report_level_code
  validates_numericality_of :report_level_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :postal_address_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :site_address_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_presence_of :schedule_id
  validates_numericality_of :schedule_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :billing_priority, :allow_nil => true, :only_integer => true
  validates_numericality_of :billing_complexity, :allow_nil => true, :only_integer => true
  validates_numericality_of :billing_configuration_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :suppress_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :suppress_bill_cycle_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :turnover, :allow_nil => true
  validates_numericality_of :turnover_currency_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :credit_limit, :allow_nil => true
  validates_numericality_of :credit_limit_currency_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :expected_revenue, :allow_nil => true
  validates_numericality_of :expected_revenue_currency_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :credit_rating_code, :allow_nil => true, :only_integer => true
  validates_length_of :credit_comments, :allow_nil => true, :maximum => 255
  validates_numericality_of :tax_class_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :payment_method_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :payment_location_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :bank_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :branch_code, :allow_nil => true, :only_integer => true
  validates_length_of :bank_account_name, :allow_nil => true, :maximum => 80
  validates_length_of :bank_account_number, :allow_nil => true, :maximum => 30
  validates_length_of :bank_account_ref, :allow_nil => true, :maximum => 15
  validates_numericality_of :card_type_code, :allow_nil => true, :only_integer => true
  validates_length_of :card_number, :allow_nil => true, :maximum => 20
  validates_numericality_of :assigned_operator_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :sales_channel_code, :allow_nil => true, :only_integer => true
  validates_length_of :company_number, :allow_nil => true, :maximum => 15
  validates_numericality_of :industry_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :region_code, :allow_nil => true, :only_integer => true
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
end
