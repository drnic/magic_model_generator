class T2RepBrrT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :customer_node_type, :class_name => 'CustomerNodeType', :foreign_key => :customer_node_type_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seq_number
  validates_numericality_of :seq_number, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_type_id
  validates_numericality_of :customer_node_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :transaction_type
  validates_numericality_of :transaction_type, :allow_nil => false, :only_integer => true
  validates_numericality_of :transaction_type_code, :allow_nil => true, :only_integer => true
  validates_length_of :transaction_sub_type_code, :allow_nil => true, :maximum => 255
  validates_length_of :number_of_transactions, :allow_nil => true, :maximum => 8
  validates_length_of :total_duration, :allow_nil => true, :maximum => 22
  validates_length_of :vat_rate, :allow_nil => true, :maximum => 16
  validates_numericality_of :amount_excl_vat, :allow_nil => true
  validates_length_of :invoice_txt, :allow_nil => true, :maximum => 255
end
