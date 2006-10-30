class BillRunTypeTask < ActiveRecord::Base
  belongs_to :bill_run_type, :class_name => 'BillRunType', :foreign_key => :bill_run_type_id
  belongs_to :schedule_task_type, :class_name => 'ScheduleTaskType', :foreign_key => :schedule_task_type_id
  validates_presence_of :bill_run_type_id
  validates_numericality_of :bill_run_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :schedule_task_type_id
  validates_numericality_of :schedule_task_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :min_operation_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_operation_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :revoke_ind_code, :allow_nil => true, :only_integer => true
end
