class Invoice < ActiveRecord::Base
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :invoice_type, :class_name => 'InvoiceType', :foreign_key => :invoice_type_id
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  has_many :accounts, :class_name => 'Account', :foreign_key => :invoice_id
  has_many :account_histories, :class_name => 'AccountHistory', :foreign_key => :invoice_id
  has_many :adjustments, :class_name => 'Adjustment', :foreign_key => :invoice_id
  has_many :adjustment_invoices, :class_name => 'AdjustmentInvoice', :foreign_key => :invoice_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :invoice_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :invoice_id
  has_many :dunning_ts, :class_name => 'DunningT', :foreign_key => :invoice_id
  has_many :invoices, :class_name => 'Invoice', :foreign_key => :invoice_id
  has_many :invoice_contents, :class_name => 'InvoiceContents', :foreign_key => :invoice_id
  has_many :invoice_receivable_types, :class_name => 'InvoiceReceivableType', :foreign_key => :invoice_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :invoice_id
  has_many :payment_invoices, :class_name => 'PaymentInvoice', :foreign_key => :invoice_id
  has_many :subtotal_values, :class_name => 'SubtotalValue', :foreign_key => :invoice_id
  has_many :trt_clec_treatments, :class_name => 'TrtClecTreatment', :foreign_key => :invoice_id
  has_many :customer_nodes, :through => accounts
  has_many :accounts, :through => accounts
  has_many :account_types, :through => accounts
  has_many :adjustments, :through => account_histories
  has_many :accounts, :through => account_histories
  has_many :payments, :through => account_histories
  has_many :customer_queries, :through => adjustments
  has_many :currencies, :through => adjustments
  has_many :adjustments, :through => adjustments
  has_many :atlanta_operators, :through => adjustments
  has_many :adjustment_types, :through => adjustments
  has_many :adjustment_batches, :through => adjustments
  has_many :accounts, :through => adjustment_invoices
  has_many :adjustments, :through => adjustment_invoices
  has_many :receivable_types, :through => adjustment_invoices
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :customer_nodes, :through => dunning_ts
  has_many :customer_nodes, :through => invoices
  has_many :accounts, :through => invoices
  has_many :bill_runs, :through => invoices
  has_many :invoice_types, :through => invoices
  has_many :receivable_types, :through => invoice_receivable_types
  has_many :payment_types, :through => payments
  has_many :customer_nodes, :through => payments
  has_many :currencies, :through => payments
  has_many :atlanta_operators, :through => payments
  has_many :payment_batches, :through => payments
  has_many :people, :through => payments
  has_many :payments, :through => payments
  has_many :accounts, :through => payment_invoices
  has_many :receivable_types, :through => payment_invoices
  has_many :payments, :through => payment_invoices
  has_many :subtotals, :through => subtotal_values
  has_many :customer_nodes, :through => subtotal_values
  has_many :services, :through => subtotal_values
  has_many :customer_nodes, :through => trt_clec_treatments
  validates_presence_of :invoice_id
  validates_numericality_of :invoice_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :customer_invoice_str
  validates_length_of :customer_invoice_str, :allow_nil => false, :maximum => 30
  validates_presence_of :invoice_type_id
  validates_numericality_of :invoice_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :bill_run_id
  validates_numericality_of :bill_run_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :running_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :qa_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :suppress_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :invoiced_account_id, :allow_nil => true, :only_integer => true
  validates_length_of :customer_account_invoice_str, :allow_nil => true, :maximum => 30
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :image_generated_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :applied_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :effective_date
  validates_presence_of :issue_date
  validates_presence_of :original_payment_due_date
  validates_presence_of :payment_due_date
  validates_presence_of :invoice_amount
  validates_numericality_of :invoice_amount, :allow_nil => false
  validates_numericality_of :statement_amount, :allow_nil => true
  validates_presence_of :balance_forward
  validates_numericality_of :balance_forward, :allow_nil => false
  validates_presence_of :account_balance
  validates_numericality_of :account_balance, :allow_nil => false
  validates_presence_of :account_initial_due
  validates_numericality_of :account_initial_due, :allow_nil => false
  validates_presence_of :current_due
  validates_numericality_of :current_due, :allow_nil => false
  validates_presence_of :total_payments
  validates_numericality_of :total_payments, :allow_nil => false
  validates_presence_of :total_adjustments
  validates_numericality_of :total_adjustments, :allow_nil => false
  validates_numericality_of :early_payment_discount, :allow_nil => true
  validates_numericality_of :payment_due_discount, :allow_nil => true
  validates_numericality_of :late_payment_charge, :allow_nil => true
  validates_numericality_of :early_payment_account_balance, :allow_nil => true
  validates_numericality_of :payment_due_account_balance, :allow_nil => true
  validates_presence_of :unbilled_amount
  validates_numericality_of :unbilled_amount, :allow_nil => false
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
