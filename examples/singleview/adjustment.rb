class Adjustment < ActiveRecord::Base
  belongs_to :adjustment, :class_name => 'Adjustment', :foreign_key => :adjustment_id
  belongs_to :adjustment_batch, :class_name => 'AdjustmentBatch', :foreign_key => :adjustment_batch_id
  belongs_to :adjustment_type, :class_name => 'AdjustmentType', :foreign_key => :adjustment_type_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :customer_query, :class_name => 'CustomerQuery', :foreign_key => :customer_query_id
  has_many :account_histories, :class_name => 'AccountHistory', :foreign_key => :adjustment_id
  has_many :adjustments, :class_name => 'Adjustment', :foreign_key => :adjustment_id
  has_many :adjustment_invoices, :class_name => 'AdjustmentInvoice', :foreign_key => :adjustment_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :adjustment_id
  has_many :xpsi_tax_errors, :class_name => 'XpsiTaxError', :foreign_key => :adjustment_id
  has_many :xpsi_trt_revokes, :class_name => 'XpsiTrtRevoke', :foreign_key => :adjustment_id
  has_many :invoices, :through => account_histories
  has_many :accounts, :through => account_histories
  has_many :payments, :through => account_histories
  has_many :customer_queries, :through => adjustments
  has_many :currencies, :through => adjustments
  has_many :invoices, :through => adjustments
  has_many :atlanta_operators, :through => adjustments
  has_many :adjustment_types, :through => adjustments
  has_many :adjustment_batches, :through => adjustments
  has_many :invoices, :through => adjustment_invoices
  has_many :accounts, :through => adjustment_invoices
  has_many :receivable_types, :through => adjustment_invoices
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :customer_nodes, :through => xpsi_tax_errors
  has_many :xpsi_tax_errors, :through => xpsi_tax_errors
  has_many :error_messages, :through => xpsi_tax_errors
  has_many :services, :through => xpsi_tax_errors
  has_many :normalised_events, :through => xpsi_tax_errors
  validates_presence_of :adjustment_id
  validates_numericality_of :adjustment_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :adjustment_nr
  validates_length_of :adjustment_nr, :allow_nil => false, :maximum => 30
  validates_numericality_of :adjustment_batch_id, :allow_nil => true, :only_integer => true
  validates_presence_of :adjustment_type_id
  validates_numericality_of :adjustment_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :adjustment_status_code
  validates_numericality_of :adjustment_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_numericality_of :from_account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :adjustment_text
  validates_length_of :adjustment_text, :allow_nil => false, :maximum => 80
  validates_presence_of :to_account_id
  validates_numericality_of :to_account_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :to_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :adjustment_invoice_code
  validates_numericality_of :adjustment_invoice_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
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
  validates_presence_of :adjustment_date
  validates_presence_of :adjustment_received_date
  validates_numericality_of :customer_query_id, :allow_nil => true, :only_integer => true
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
