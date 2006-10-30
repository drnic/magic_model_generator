class Account < ActiveRecord::Base
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :account_type, :class_name => 'AccountType', :foreign_key => :account_type_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  has_many :accounts, :class_name => 'Account', :foreign_key => :account_id
  has_many :account_histories, :class_name => 'AccountHistory', :foreign_key => :account_id
  has_many :account_reservations, :class_name => 'AccountReservation', :foreign_key => :account_id
  has_many :adjustment_invoices, :class_name => 'AdjustmentInvoice', :foreign_key => :account_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :account_id
  has_many :customer_node_inv_formats, :class_name => 'CustomerNodeInvFormat', :foreign_key => :account_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :account_id
  has_many :gl_uploads, :class_name => 'GlUpload', :foreign_key => :account_id
  has_many :inv_report_accounts_ts, :class_name => 'InvReportAccountsT', :foreign_key => :account_id
  has_many :invoices, :class_name => 'Invoice', :foreign_key => :account_id
  has_many :payment_invoices, :class_name => 'PaymentInvoice', :foreign_key => :account_id
  has_many :racr_clec_t1s, :class_name => 'RacrClecT1', :foreign_key => :account_id
  has_many :racr_clec_t2s, :class_name => 'RacrClecT2', :foreign_key => :account_id
  has_many :receivable_type_histories, :class_name => 'ReceivableTypeHistory', :foreign_key => :account_id
  has_many :rshu_cmn_ts, :class_name => 'RshuCmnT', :foreign_key => :account_id
  has_many :customer_nodes, :through => accounts
  has_many :invoices, :through => accounts
  has_many :account_types, :through => accounts
  has_many :adjustments, :through => account_histories
  has_many :invoices, :through => account_histories
  has_many :payments, :through => account_histories
  has_many :invoices, :through => adjustment_invoices
  has_many :adjustments, :through => adjustment_invoices
  has_many :receivable_types, :through => adjustment_invoices
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :customer_nodes, :through => customer_node_inv_formats
  has_many :invoice_formats, :through => customer_node_inv_formats
  has_many :people, :through => customer_node_inv_formats
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :task_queues, :through => gl_uploads
  has_many :customer_nodes, :through => inv_report_accounts_ts
  has_many :bill_runs, :through => inv_report_accounts_ts
  has_many :customer_nodes, :through => invoices
  has_many :invoices, :through => invoices
  has_many :bill_runs, :through => invoices
  has_many :invoice_types, :through => invoices
  has_many :invoices, :through => payment_invoices
  has_many :receivable_types, :through => payment_invoices
  has_many :payments, :through => payment_invoices
  has_many :task_queues, :through => racr_clec_t1s
  has_many :task_queues, :through => racr_clec_t2s
  has_many :atlanta_groups, :through => receivable_type_histories
  has_many :atlanta_operators, :through => receivable_type_histories
  has_many :receivable_types, :through => receivable_type_histories
  has_many :gl_codes, :through => receivable_type_histories
  has_many :normalised_event_types, :through => rshu_cmn_ts
  has_many :task_queues, :through => rshu_cmn_ts
  has_many :services, :through => rshu_cmn_ts
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_name
  validates_length_of :account_name, :allow_nil => false, :maximum => 30
  validates_presence_of :last_modified
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_type_id
  validates_numericality_of :account_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_balance
  validates_numericality_of :account_balance, :allow_nil => false
  validates_presence_of :balance_date
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :previous_invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :credit_limit, :allow_nil => true
  validates_presence_of :unbilled_amount
  validates_numericality_of :unbilled_amount, :allow_nil => false
  validates_numericality_of :account_action_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_unbilled_amount, :allow_nil => true
  validates_numericality_of :invoice_account_id, :allow_nil => true, :only_integer => true
end
