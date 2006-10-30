class TaskQueueResult < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :output_type_code
  validates_numericality_of :output_type_code, :allow_nil => false, :only_integer => true
  validates_length_of :output_text, :allow_nil => true, :maximum => 255
end
