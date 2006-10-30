class RdfdCmnT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :file_name
  validates_length_of :file_name, :allow_nil => false, :maximum => 155
  validates_length_of :event_type, :allow_nil => true, :maximum => 40
  validates_length_of :event_sub_type, :allow_nil => true, :maximum => 40
  validates_numericality_of :rated_event_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :rated_event_duration, :allow_nil => true, :only_integer => true
  validates_numericality_of :rated_event_volume, :allow_nil => true, :only_integer => true
  validates_numericality_of :event_error_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :event_error_duration, :allow_nil => true, :only_integer => true
  validates_numericality_of :event_error_volume, :allow_nil => true, :only_integer => true
end
