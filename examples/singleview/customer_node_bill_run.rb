class CustomerNodeBillRun < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :bill_run_operation, :class_name => 'BillRunOperation', :foreign_key => :bill_run_operation_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :bill_run_operation_id
  validates_numericality_of :bill_run_operation_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :status_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :error_message_id, :allow_nil => true, :only_integer => true
  validates_length_of :error_message, :allow_nil => true, :maximum => 4000
end
