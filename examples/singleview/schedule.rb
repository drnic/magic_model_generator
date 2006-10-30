class Schedule < ActiveRecord::Base
  belongs_to :schedule, :class_name => 'Schedule', :foreign_key => :schedule_id
  belongs_to :schedule_task_type, :class_name => 'ScheduleTaskType', :foreign_key => :schedule_task_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atlanta_table_partitions, :class_name => 'AtlantaTablePartition', :foreign_key => :schedule_id
  has_many :customer_node_histories, :class_name => 'CustomerNodeHistory', :foreign_key => :schedule_id
  has_many :dil_validation_ts, :class_name => 'DilValidationT', :foreign_key => :schedule_id
  has_many :invoice_message_histories, :class_name => 'InvoiceMessageHistory', :foreign_key => :schedule_id
  has_many :schedules, :class_name => 'Schedule', :foreign_key => :schedule_id
  has_many :task_queues, :class_name => 'TaskQueue', :foreign_key => :schedule_id
  has_many :atlanta_groups, :through => atlanta_table_partitions
  has_many :task_queues, :through => atlanta_table_partitions
  has_many :atlanta_operators, :through => atlanta_table_partitions
  has_many :atlanta_table_partitions, :through => atlanta_table_partitions
  has_many :atlanta_groups, :through => customer_node_histories
  has_many :customer_nodes, :through => customer_node_histories
  has_many :currencies, :through => customer_node_histories
  has_many :atlanta_operators, :through => customer_node_histories
  has_many :customer_node_types, :through => customer_node_histories
  has_many :gl_codes, :through => customer_node_histories
  has_many :people, :through => customer_node_histories
  has_many :atlanta_groups, :through => invoice_message_histories
  has_many :customer_nodes, :through => invoice_message_histories
  has_many :task_queues, :through => invoice_message_histories
  has_many :atlanta_operators, :through => invoice_message_histories
  has_many :invoice_formats, :through => invoice_message_histories
  has_many :account_types, :through => invoice_message_histories
  has_many :invoice_messages, :through => invoice_message_histories
  has_many :atlanta_groups, :through => schedules
  has_many :atlanta_operators, :through => schedules
  has_many :schedule_task_types, :through => schedules
  has_many :atlanta_groups, :through => task_queues
  has_many :atlanta_operators, :through => task_queues
  has_many :task_queues, :through => task_queues
  validates_presence_of :schedule_id
  validates_numericality_of :schedule_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :schedule_task_type_id
  validates_numericality_of :schedule_task_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :email_address
  validates_length_of :email_address, :allow_nil => false, :maximum => 255
  validates_presence_of :schedule_name
  validates_length_of :schedule_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_length_of :instance_name, :allow_nil => true, :maximum => 9
  validates_presence_of :purge_period
  validates_numericality_of :purge_period, :allow_nil => false, :only_integer => true
  validates_presence_of :preschedule_count
  validates_numericality_of :preschedule_count, :allow_nil => false, :only_integer => true
  validates_presence_of :start_repeat_type_code
  validates_numericality_of :start_repeat_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_repeat_type_code
  validates_numericality_of :effective_repeat_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :repeat_units
  validates_numericality_of :repeat_units, :allow_nil => false, :only_integer => true
  validates_presence_of :first_date
  validates_presence_of :effective_date
  validates_presence_of :schedule_status_code
  validates_numericality_of :schedule_status_code, :allow_nil => false, :only_integer => true
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
  validates_length_of :general_11, :allow_nil => true, :maximum => 255
  validates_length_of :general_12, :allow_nil => true, :maximum => 255
  validates_length_of :general_13, :allow_nil => true, :maximum => 255
  validates_length_of :general_14, :allow_nil => true, :maximum => 255
  validates_length_of :general_15, :allow_nil => true, :maximum => 255
  validates_length_of :general_16, :allow_nil => true, :maximum => 255
  validates_length_of :general_17, :allow_nil => true, :maximum => 255
  validates_length_of :general_18, :allow_nil => true, :maximum => 255
  validates_length_of :general_19, :allow_nil => true, :maximum => 255
  validates_length_of :general_20, :allow_nil => true, :maximum => 255
  validates_length_of :general_21, :allow_nil => true, :maximum => 255
  validates_length_of :general_22, :allow_nil => true, :maximum => 255
  validates_length_of :general_23, :allow_nil => true, :maximum => 255
  validates_length_of :general_24, :allow_nil => true, :maximum => 255
  validates_length_of :general_25, :allow_nil => true, :maximum => 255
end
