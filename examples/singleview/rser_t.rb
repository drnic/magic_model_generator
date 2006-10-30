class RserT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_length_of :event_class, :allow_nil => true, :maximum => 40
  validates_length_of :normalised_file, :allow_nil => true, :maximum => 255
  validates_length_of :error_code, :allow_nil => true, :maximum => 10
  validates_length_of :event_type, :allow_nil => true, :maximum => 40
  validates_length_of :event_sub_type, :allow_nil => true, :maximum => 40
  validates_numericality_of :event_count, :allow_nil => true, :only_integer => true
end
