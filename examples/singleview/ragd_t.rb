class RagdT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_customer_node_id
  validates_numericality_of :root_customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_name
  validates_length_of :root_name, :allow_nil => false, :maximum => 200
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :node_name
  validates_length_of :node_name, :allow_nil => false, :maximum => 200
  validates_presence_of :account_name
  validates_length_of :account_name, :allow_nil => false, :maximum => 30
  validates_numericality_of :amount_a, :allow_nil => true
  validates_numericality_of :amount_b, :allow_nil => true
  validates_numericality_of :amount_c, :allow_nil => true
  validates_numericality_of :amount_d, :allow_nil => true
  validates_numericality_of :amount_e, :allow_nil => true
  validates_numericality_of :amount_not_overdue, :allow_nil => true
  validates_numericality_of :amount_total, :allow_nil => true
  validates_numericality_of :amount_unallocated, :allow_nil => true
  validates_presence_of :max_days_overdue
  validates_numericality_of :max_days_overdue, :allow_nil => false, :only_integer => true
end
