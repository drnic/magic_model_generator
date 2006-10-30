class BillRunOperation < ActiveRecord::Base
  belongs_to :bill_run_operation, :class_name => 'BillRunOperation', :foreign_key => :bill_run_operation_id
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  has_many :bill_run_operations, :class_name => 'BillRunOperation', :foreign_key => :bill_run_operation_id
  has_many :customer_nodes, :class_name => 'CustomerNode', :foreign_key => :bill_run_operation_id
  has_many :customer_node_bill_runs, :class_name => 'CustomerNodeBillRun', :foreign_key => :bill_run_operation_id
  has_many :service_bill_run_ts, :class_name => 'ServiceBillRunT', :foreign_key => :bill_run_operation_id
  has_many :error_messages, :through => bill_run_operations
  has_many :task_queues, :through => bill_run_operations
  has_many :atlanta_operators, :through => bill_run_operations
  has_many :bill_runs, :through => bill_run_operations
  has_many :customer_nodes, :through => customer_nodes
  has_many :bill_runs, :through => customer_nodes
  has_many :customer_nodes, :through => customer_node_bill_runs
  has_many :error_messages, :through => customer_node_bill_runs
  has_many :customer_nodes, :through => service_bill_run_ts
  has_many :services, :through => service_bill_run_ts
  validates_presence_of :bill_run_operation_id
  validates_numericality_of :bill_run_operation_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :bill_run_id
  validates_numericality_of :bill_run_id, :allow_nil => false, :only_integer => true
  validates_presence_of :status_code
  validates_numericality_of :status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_length_of :process_name, :allow_nil => true, :maximum => 80
  validates_presence_of :bill_run_operation_code
  validates_numericality_of :bill_run_operation_code, :allow_nil => false, :only_integer => true
  validates_presence_of :start_date
  validates_presence_of :input_count
  validates_numericality_of :input_count, :allow_nil => false, :only_integer => true
  validates_numericality_of :success_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :error_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :pre_skip_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :post_skip_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :amount, :allow_nil => true
  validates_numericality_of :error_message_id, :allow_nil => true, :only_integer => true
  validates_length_of :error_message, :allow_nil => true, :maximum => 4000
  validates_numericality_of :general_stats1, :allow_nil => true
  validates_numericality_of :general_stats2, :allow_nil => true
  validates_numericality_of :general_stats3, :allow_nil => true
  validates_numericality_of :general_stats4, :allow_nil => true
  validates_numericality_of :general_stats5, :allow_nil => true
  validates_numericality_of :general_stats6, :allow_nil => true
  validates_numericality_of :general_stats7, :allow_nil => true
  validates_numericality_of :general_stats8, :allow_nil => true
  validates_numericality_of :general_stats9, :allow_nil => true
  validates_numericality_of :general_stats10, :allow_nil => true
end
