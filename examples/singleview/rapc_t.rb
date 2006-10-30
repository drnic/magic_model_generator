class RapcT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_cus_node_name
  validates_length_of :root_cus_node_name, :allow_nil => false, :maximum => 200
  validates_presence_of :root_cus_node_id
  validates_numericality_of :root_cus_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :cus_node_name
  validates_length_of :cus_node_name, :allow_nil => false, :maximum => 200
  validates_presence_of :cus_node_id
  validates_numericality_of :cus_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_number
  validates_length_of :account_number, :allow_nil => false, :maximum => 30
  validates_presence_of :opening_balance
  validates_numericality_of :opening_balance, :allow_nil => false
  validates_presence_of :invoice_amount
  validates_numericality_of :invoice_amount, :allow_nil => false
  validates_presence_of :payment_amount
  validates_numericality_of :payment_amount, :allow_nil => false
  validates_presence_of :adjustment_amount
  validates_numericality_of :adjustment_amount, :allow_nil => false
  validates_presence_of :closing_balance
  validates_numericality_of :closing_balance, :allow_nil => false
end
