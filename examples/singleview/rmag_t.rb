class RmagT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_customer_node_id
  validates_numericality_of :root_customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_name
  validates_length_of :root_name, :allow_nil => false, :maximum => 200
  validates_presence_of :node_name
  validates_length_of :node_name, :allow_nil => false, :maximum => 200
  validates_presence_of :account_name
  validates_length_of :account_name, :allow_nil => false, :maximum => 30
  validates_numericality_of :invoice_amount_1, :allow_nil => true
  validates_numericality_of :invoice_age_1, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_fully_paid_1, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_amount_2, :allow_nil => true
  validates_numericality_of :invoice_age_2, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_fully_paid_2, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_amount_3, :allow_nil => true
  validates_numericality_of :invoice_age_3, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_fully_paid_3, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_amount_4, :allow_nil => true
  validates_numericality_of :invoice_age_4, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_fully_paid_4, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_amount_5, :allow_nil => true
  validates_numericality_of :invoice_age_5, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_fully_paid_5, :allow_nil => true, :only_integer => true
  validates_numericality_of :amount_overdue, :allow_nil => true
  validates_numericality_of :amount_unallocated, :allow_nil => true
end
