class PaymentInvoice < ActiveRecord::Base
  belongs_to :payment, :class_name => 'Payment', :foreign_key => :payment_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  validates_presence_of :payment_id
  validates_numericality_of :payment_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :receivable_type_id, :allow_nil => true, :only_integer => true
  validates_presence_of :amount
  validates_numericality_of :amount, :allow_nil => false
end
