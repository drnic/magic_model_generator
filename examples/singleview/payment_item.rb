class PaymentItem < ActiveRecord::Base
  belongs_to :payment, :class_name => 'Payment', :foreign_key => :payment_id
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  validates_presence_of :payment_id
  validates_numericality_of :payment_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_length_of :label, :allow_nil => true, :maximum => 255
  validates_numericality_of :receivable_type_id, :allow_nil => true, :only_integer => true
  validates_presence_of :amount
  validates_numericality_of :amount, :allow_nil => false
  validates_presence_of :to_amount
  validates_numericality_of :to_amount, :allow_nil => false
end
