class Payment < ActiveRecord::Base
  belongs_to :payment, :class_name => 'Payment', :foreign_key => :payment_id
  belongs_to :payment_batch, :class_name => 'PaymentBatch', :foreign_key => :payment_batch_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :payment_type, :class_name => 'PaymentType', :foreign_key => :payment_type_id
  has_many :account_histories, :class_name => 'AccountHistory', :foreign_key => :payment_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :payment_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :payment_id
  has_many :payment_invoices, :class_name => 'PaymentInvoice', :foreign_key => :payment_id
  has_many :payment_items, :class_name => 'PaymentItem', :foreign_key => :payment_id
  has_many :t2_pay_statements, :class_name => 'T2PayStatement', :foreign_key => :payment_id
  has_many :adjustments, :through => account_histories
  has_many :invoices, :through => account_histories
  has_many :accounts, :through => account_histories
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :charges, :through => charges
  has_many :payment_types, :through => payments
  has_many :customer_nodes, :through => payments
  has_many :currencies, :through => payments
  has_many :invoices, :through => payments
  has_many :atlanta_operators, :through => payments
  has_many :payment_batches, :through => payments
  has_many :people, :through => payments
  has_many :invoices, :through => payment_invoices
  has_many :accounts, :through => payment_invoices
  has_many :receivable_types, :through => payment_invoices
  has_many :receivable_types, :through => payment_items
  has_many :customer_queries, :through => t2_pay_statements
  has_many :customer_nodes, :through => t2_pay_statements
  has_many :task_queues, :through => t2_pay_statements
  has_many :t2_pay_statements, :through => t2_pay_statements
  validates_presence_of :payment_id
  validates_numericality_of :payment_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_numericality_of :payment_batch_id, :allow_nil => true, :only_integer => true
  validates_presence_of :receipt_nr
  validates_length_of :receipt_nr, :allow_nil => false, :maximum => 30
  validates_presence_of :payment_date
  validates_presence_of :payment_received_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :from_account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :to_account_id
  validates_numericality_of :to_account_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :to_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :payment_invoice_code
  validates_numericality_of :payment_invoice_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :person_id, :allow_nil => true, :only_integer => true
  validates_presence_of :currency_id
  validates_numericality_of :currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :currency_conversion_date
  validates_presence_of :amount
  validates_numericality_of :amount, :allow_nil => false
  validates_numericality_of :from_amount, :allow_nil => true
  validates_numericality_of :from_adjust_amount, :allow_nil => true
  validates_numericality_of :from_total_amount, :allow_nil => true
  validates_presence_of :to_amount
  validates_numericality_of :to_amount, :allow_nil => false
  validates_presence_of :to_adjust_amount
  validates_numericality_of :to_adjust_amount, :allow_nil => false
  validates_presence_of :to_total_amount
  validates_numericality_of :to_total_amount, :allow_nil => false
  validates_presence_of :payment_location_code
  validates_numericality_of :payment_location_code, :allow_nil => false, :only_integer => true
  validates_presence_of :payment_type_id
  validates_numericality_of :payment_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :payment_status_code
  validates_numericality_of :payment_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :payment_rejected_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_rejected_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_rejected_gl_code_id, :allow_nil => true, :only_integer => true
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
