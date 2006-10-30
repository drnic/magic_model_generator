class T2InvSuppressInvoice < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  validates_numericality_of :root_customer_node_id, :allow_nil => true, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :bill_run_id
  validates_numericality_of :bill_run_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :amount
  validates_numericality_of :amount, :allow_nil => false
  validates_numericality_of :reason_code, :allow_nil => true, :only_integer => true
end
