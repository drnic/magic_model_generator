class InvoiceType < ActiveRecord::Base
  belongs_to :invoice_type, :class_name => 'InvoiceType', :foreign_key => :invoice_type_id
  has_many :account_types, :class_name => 'AccountType', :foreign_key => :invoice_type_id
  has_many :invoices, :class_name => 'Invoice', :foreign_key => :invoice_type_id
  has_many :invoice_types, :class_name => 'InvoiceType', :foreign_key => :invoice_type_id
  has_many :invoice_type_histories, :class_name => 'InvoiceTypeHistory', :foreign_key => :invoice_type_id
  has_many :invoice_type_variables, :class_name => 'InvoiceTypeVariable', :foreign_key => :invoice_type_id
  has_many :atlanta_groups, :through => account_types
  has_many :currencies, :through => account_types
  has_many :atlanta_operators, :through => account_types
  has_many :account_types, :through => account_types
  has_many :customer_nodes, :through => invoices
  has_many :accounts, :through => invoices
  has_many :invoices, :through => invoices
  has_many :bill_runs, :through => invoices
  has_many :atlanta_groups, :through => invoice_type_histories
  has_many :atlanta_operators, :through => invoice_type_histories
  has_many :expression_lists, :through => invoice_type_histories
  has_many :variable_defns, :through => invoice_type_variables
  validates_presence_of :invoice_type_id
  validates_numericality_of :invoice_type_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
