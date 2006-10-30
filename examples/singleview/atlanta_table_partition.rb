class AtlantaTablePartition < ActiveRecord::Base
  belongs_to :atlanta_table_partition, :class_name => 'AtlantaTablePartition', :foreign_key => :atlanta_table_partition_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :schedule, :class_name => 'Schedule', :foreign_key => :schedule_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  has_many :atlanta_table_partitions, :class_name => 'AtlantaTablePartition', :foreign_key => :atlanta_table_partition_id
  has_many :atlanta_groups, :through => atlanta_table_partitions
  has_many :task_queues, :through => atlanta_table_partitions
  has_many :atlanta_operators, :through => atlanta_table_partitions
  has_many :schedules, :through => atlanta_table_partitions
  validates_presence_of :atlanta_table_partition_id
  validates_numericality_of :atlanta_table_partition_id, :allow_nil => false, :only_integer => true
  validates_presence_of :table_partition_name
  validates_length_of :table_partition_name, :allow_nil => false, :maximum => 30
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :base_table_name
  validates_length_of :base_table_name, :allow_nil => false, :maximum => 30
  validates_length_of :entity_id_column_name, :allow_nil => true, :maximum => 30
  validates_numericality_of :from_entity_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_entity_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :desired_from_entity_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :desired_to_entity_id, :allow_nil => true, :only_integer => true
  validates_length_of :date_column_name, :allow_nil => true, :maximum => 30
  validates_presence_of :desired_status_code
  validates_numericality_of :desired_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :actual_status_code
  validates_numericality_of :actual_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :required_operation_code, :allow_nil => true, :only_integer => true
  validates_presence_of :operation_outcome_code
  validates_numericality_of :operation_outcome_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :schedule_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :uninvoiced_ind_code, :allow_nil => true, :only_integer => true
end
