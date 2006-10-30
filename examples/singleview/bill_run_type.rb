class BillRunType < ActiveRecord::Base
  belongs_to :bill_run_type, :class_name => 'BillRunType', :foreign_key => :bill_run_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  has_many :bill_runs, :class_name => 'BillRun', :foreign_key => :bill_run_type_id
  has_many :bill_run_types, :class_name => 'BillRunType', :foreign_key => :bill_run_type_id
  has_many :bill_run_type_statuses, :class_name => 'BillRunTypeStatus', :foreign_key => :bill_run_type_id
  has_many :bill_run_type_tasks, :class_name => 'BillRunTypeTask', :foreign_key => :bill_run_type_id
  has_many :atlanta_groups, :through => bill_runs
  has_many :error_messages, :through => bill_runs
  has_many :atlanta_operators, :through => bill_runs
  has_many :bill_runs, :through => bill_runs
  has_many :atlanta_groups, :through => bill_run_types
  has_many :currencies, :through => bill_run_types
  has_many :atlanta_operators, :through => bill_run_types
  has_many :icons, :through => bill_run_type_statuses
  has_many :schedule_task_types, :through => bill_run_type_tasks
  validates_presence_of :bill_run_type_id
  validates_numericality_of :bill_run_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :bill_run_type_name
  validates_length_of :bill_run_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :qa_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :default_icon_id
  validates_numericality_of :default_icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :currency_id
  validates_numericality_of :currency_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :summary_function_defn_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :bill_run_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :operation_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
