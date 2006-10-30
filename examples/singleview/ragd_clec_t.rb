class RagdClecT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_type_name
  validates_length_of :customer_type_name, :allow_nil => false, :maximum => 80
  validates_presence_of :account_status
  validates_length_of :account_status, :allow_nil => false, :maximum => 80
  validates_length_of :credit_class, :allow_nil => true, :maximum => 40
  validates_length_of :credit_limit, :allow_nil => true, :maximum => 20
  validates_presence_of :root_node_id
  validates_numericality_of :root_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_node_name
  validates_length_of :root_node_name, :allow_nil => false, :maximum => 80
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :node_name
  validates_length_of :node_name, :allow_nil => false, :maximum => 80
  validates_presence_of :account_name
  validates_length_of :account_name, :allow_nil => false, :maximum => 40
  validates_presence_of :amount_180
  validates_numericality_of :amount_180, :allow_nil => false
  validates_presence_of :amount_150
  validates_numericality_of :amount_150, :allow_nil => false
  validates_presence_of :amount_120
  validates_numericality_of :amount_120, :allow_nil => false
  validates_presence_of :amount_90
  validates_numericality_of :amount_90, :allow_nil => false
  validates_presence_of :amount_60
  validates_numericality_of :amount_60, :allow_nil => false
  validates_presence_of :amount_30
  validates_numericality_of :amount_30, :allow_nil => false
  validates_presence_of :amount_0
  validates_numericality_of :amount_0, :allow_nil => false
  validates_presence_of :amount_not_overdue
  validates_numericality_of :amount_not_overdue, :allow_nil => false
  validates_numericality_of :amount_total, :allow_nil => true
  validates_presence_of :amount_unallocated
  validates_numericality_of :amount_unallocated, :allow_nil => false
  validates_presence_of :max_days_overdue
  validates_numericality_of :max_days_overdue, :allow_nil => false, :only_integer => true
end
