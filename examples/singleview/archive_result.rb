class ArchiveResult < ActiveRecord::Base
  belongs_to :archive_result, :class_name => 'ArchiveResult', :foreign_key => :archive_result_id
  belongs_to :archive_type, :class_name => 'ArchiveType', :foreign_key => :archive_type_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  has_many :archive_results, :class_name => 'ArchiveResult', :foreign_key => :archive_result_id
  has_many :task_queues, :through => archive_results
  has_many :archive_types, :through => archive_results
  validates_presence_of :archive_result_id
  validates_numericality_of :archive_result_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :archive_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_presence_of :archive_date
  validates_length_of :where_clause, :allow_nil => true, :maximum => 2000
  validates_length_of :filename, :allow_nil => true, :maximum => 255
end
