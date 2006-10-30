class ErrorMessage < ActiveRecord::Base
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atai_error_names, :class_name => 'AtaiErrorName', :foreign_key => :error_message_id
  has_many :bill_runs, :class_name => 'BillRun', :foreign_key => :error_message_id
  has_many :bill_run_operations, :class_name => 'BillRunOperation', :foreign_key => :error_message_id
  has_many :customer_node_bill_runs, :class_name => 'CustomerNodeBillRun', :foreign_key => :error_message_id
  has_many :entity_remaps, :class_name => 'EntityRemap', :foreign_key => :error_message_id
  has_many :error_messages, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  has_many :expression_list_values, :class_name => 'ExpressionListValue', :foreign_key => :error_message_id
  has_many :normalised_event_errors, :class_name => 'NormalisedEventError', :foreign_key => :error_message_id
  has_many :schedule_task_types, :class_name => 'ScheduleTaskType', :foreign_key => :error_message_id
  has_many :xpsi_ne_batches, :class_name => 'XpsiNeBatch', :foreign_key => :error_message_id
  has_many :xpsi_tax_errors, :class_name => 'XpsiTaxError', :foreign_key => :error_message_id
  has_many :atlanta_groups, :through => bill_runs
  has_many :bill_run_types, :through => bill_runs
  has_many :atlanta_operators, :through => bill_runs
  has_many :bill_runs, :through => bill_runs
  has_many :task_queues, :through => bill_run_operations
  has_many :atlanta_operators, :through => bill_run_operations
  has_many :bill_runs, :through => bill_run_operations
  has_many :bill_run_operations, :through => bill_run_operations
  has_many :customer_nodes, :through => customer_node_bill_runs
  has_many :bill_run_operations, :through => customer_node_bill_runs
  has_many :customer_nodes, :through => entity_remaps
  has_many :task_queues, :through => entity_remaps
  has_many :atlanta_groups, :through => error_messages
  has_many :atlanta_operators, :through => error_messages
  has_many :expression_list_values, :through => expression_list_values
  has_many :expression_lists, :through => expression_list_values
  has_many :normalised_event_types, :through => normalised_event_errors
  has_many :currencies, :through => normalised_event_errors
  has_many :normalised_event_files, :through => normalised_event_errors
  has_many :reprocessed_files, :through => normalised_event_errors
  has_many :bill_runs, :through => normalised_event_errors
  has_many :normalised_events, :through => normalised_event_errors
  has_many :atlanta_groups, :through => schedule_task_types
  has_many :atlanta_operators, :through => schedule_task_types
  has_many :schedule_task_types, :through => schedule_task_types
  has_many :entity_validations, :through => schedule_task_types
  has_many :xpsi_ne_batches, :through => xpsi_ne_batches
  has_many :customer_nodes, :through => xpsi_tax_errors
  has_many :xpsi_tax_errors, :through => xpsi_tax_errors
  has_many :adjustments, :through => xpsi_tax_errors
  has_many :services, :through => xpsi_tax_errors
  has_many :normalised_events, :through => xpsi_tax_errors
  validates_presence_of :error_message_id
  validates_numericality_of :error_message_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :severity_level_code, :allow_nil => true, :only_integer => true
  validates_presence_of :error_code
  validates_length_of :error_code, :allow_nil => false, :maximum => 10
  validates_presence_of :error_message
  validates_length_of :error_message, :allow_nil => false, :maximum => 4000
  validates_presence_of :error_cause
  validates_length_of :error_cause, :allow_nil => false, :maximum => 4000
  validates_presence_of :error_action
  validates_length_of :error_action, :allow_nil => false, :maximum => 4000
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
