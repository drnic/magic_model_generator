class ScheduleTaskType < ActiveRecord::Base
  belongs_to :schedule_task_type, :class_name => 'ScheduleTaskType', :foreign_key => :schedule_task_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  has_many :bill_run_type_tasks, :class_name => 'BillRunTypeTask', :foreign_key => :schedule_task_type_id
  has_many :schedules, :class_name => 'Schedule', :foreign_key => :schedule_task_type_id
  has_many :schedule_task_types, :class_name => 'ScheduleTaskType', :foreign_key => :schedule_task_type_id
  has_many :bill_run_types, :through => bill_run_type_tasks
  has_many :atlanta_groups, :through => schedules
  has_many :atlanta_operators, :through => schedules
  has_many :schedules, :through => schedules
  has_many :atlanta_groups, :through => schedule_task_types
  has_many :error_messages, :through => schedule_task_types
  has_many :atlanta_operators, :through => schedule_task_types
  has_many :entity_validations, :through => schedule_task_types
  validates_presence_of :schedule_task_type_id
  validates_numericality_of :schedule_task_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :schedule_task_type_name
  validates_length_of :schedule_task_type_name, :allow_nil => false, :maximum => 60
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :task_type_code
  validates_numericality_of :task_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :max_duration
  validates_numericality_of :max_duration, :allow_nil => false, :only_integer => true
  validates_presence_of :purge_period
  validates_numericality_of :purge_period, :allow_nil => false, :only_integer => true
  validates_presence_of :max_tasks
  validates_numericality_of :max_tasks, :allow_nil => false, :only_integer => true
  validates_presence_of :error_message_id
  validates_numericality_of :error_message_id, :allow_nil => false, :only_integer => true
  validates_length_of :server_command, :allow_nil => true, :maximum => 255
  validates_length_of :client_command, :allow_nil => true, :maximum => 255
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
