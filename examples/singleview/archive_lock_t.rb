class ArchiveLockT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :process_identifier
  validates_length_of :process_identifier, :allow_nil => false, :maximum => 80
  validates_presence_of :last_modified
  validates_length_of :archive_owner, :allow_nil => true, :maximum => 30
  validates_presence_of :user_name
  validates_length_of :user_name, :allow_nil => false, :maximum => 30
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :locked_ind_code, :allow_nil => true, :only_integer => true
end
