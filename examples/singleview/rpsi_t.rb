class RpsiT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :equipment, :class_name => 'Equipment', :foreign_key => :equipment_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :node_name
  validates_length_of :node_name, :allow_nil => false, :maximum => 200
  validates_presence_of :hierarchy_level
  validates_numericality_of :hierarchy_level, :allow_nil => false, :only_integer => true
  validates_presence_of :account_name
  validates_length_of :account_name, :allow_nil => false, :maximum => 30
  validates_numericality_of :product_instance_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :equipment_id, :allow_nil => true, :only_integer => true
end
