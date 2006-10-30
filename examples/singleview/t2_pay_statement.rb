class T2PayStatement < ActiveRecord::Base
  belongs_to :t2_pay_statement, :class_name => 'T2PayStatement', :foreign_key => :t2_pay_statement_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :payment, :class_name => 'Payment', :foreign_key => :payment_id
  belongs_to :customer_query, :class_name => 'CustomerQuery', :foreign_key => :customer_query_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  has_many :t2_pay_statements, :class_name => 'T2PayStatement', :foreign_key => :t2_pay_statement_id
  has_many :customer_queries, :through => t2_pay_statements
  has_many :customer_nodes, :through => t2_pay_statements
  has_many :task_queues, :through => t2_pay_statements
  has_many :payments, :through => t2_pay_statements
  validates_presence_of :t2_pay_statement_id
  validates_numericality_of :t2_pay_statement_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_statement_str
  validates_length_of :customer_statement_str, :allow_nil => false, :maximum => 255
  validates_presence_of :statement_type_id
  validates_numericality_of :statement_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :payment_id
  validates_numericality_of :payment_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :customer_query_id, :allow_nil => true, :only_integer => true
  validates_presence_of :create_date
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_presence_of :reprint_ind_code
  validates_numericality_of :reprint_ind_code, :allow_nil => false, :only_integer => true
  validates_length_of :statement_data, :allow_nil => true, :maximum => 4000
end
