class AccountType < ActiveRecord::Base
  belongs_to :account_type, :class_name => 'AccountType', :foreign_key => :account_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :invoice_type, :class_name => 'InvoiceType', :foreign_key => :invoice_type_id
  has_many :accounts, :class_name => 'Account', :foreign_key => :account_type_id
  has_many :account_types, :class_name => 'AccountType', :foreign_key => :account_type_id
  has_many :account_type_agings, :class_name => 'AccountTypeAging', :foreign_key => :account_type_id
  has_many :account_type_variables, :class_name => 'AccountTypeVariable', :foreign_key => :account_type_id
  has_many :invoice_message_histories, :class_name => 'InvoiceMessageHistory', :foreign_key => :account_type_id
  has_many :customer_nodes, :through => accounts
  has_many :invoices, :through => accounts
  has_many :accounts, :through => accounts
  has_many :atlanta_groups, :through => account_types
  has_many :currencies, :through => account_types
  has_many :atlanta_operators, :through => account_types
  has_many :invoice_types, :through => account_types
  has_many :variable_defns, :through => account_type_variables
  has_many :atlanta_groups, :through => invoice_message_histories
  has_many :customer_nodes, :through => invoice_message_histories
  has_many :task_queues, :through => invoice_message_histories
  has_many :atlanta_operators, :through => invoice_message_histories
  has_many :invoice_formats, :through => invoice_message_histories
  has_many :schedules, :through => invoice_message_histories
  has_many :invoice_messages, :through => invoice_message_histories
  validates_presence_of :account_type_id
  validates_numericality_of :account_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :account_type_name
  validates_length_of :account_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_class_code
  validates_numericality_of :account_class_code, :allow_nil => false, :only_integer => true
  validates_presence_of :account_category_code
  validates_numericality_of :account_category_code, :allow_nil => false, :only_integer => true
  validates_presence_of :asset_increase_prompt
  validates_length_of :asset_increase_prompt, :allow_nil => false, :maximum => 40
  validates_presence_of :asset_decrease_prompt
  validates_length_of :asset_decrease_prompt, :allow_nil => false, :maximum => 40
  validates_presence_of :currency_id
  validates_numericality_of :currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_format_expr
  validates_length_of :account_format_expr, :allow_nil => false, :maximum => 255
  validates_presence_of :invoice_type_id
  validates_numericality_of :invoice_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :account_reservation_ev_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
