class InvoiceReceivableType < ActiveRecord::Base
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  validates_presence_of :invoice_id
  validates_numericality_of :invoice_id, :allow_nil => false, :only_integer => true
  validates_presence_of :receivable_type_id
  validates_numericality_of :receivable_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :amount
  validates_numericality_of :amount, :allow_nil => false
  validates_presence_of :current_due
  validates_numericality_of :current_due, :allow_nil => false
end
