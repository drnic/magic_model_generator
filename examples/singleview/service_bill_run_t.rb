class ServiceBillRunT < ActiveRecord::Base
  belongs_to :bill_run_operation, :class_name => 'BillRunOperation', :foreign_key => :bill_run_operation_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  validates_presence_of :bill_run_operation_id
  validates_numericality_of :bill_run_operation_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :service_id
  validates_numericality_of :service_id, :allow_nil => false, :only_integer => true
  validates_presence_of :data
end
