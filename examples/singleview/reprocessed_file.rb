class ReprocessedFile < ActiveRecord::Base
  belongs_to :reprocessed_file, :class_name => 'ReprocessedFile', :foreign_key => :reprocessed_file_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :normalised_event_file, :class_name => 'NormalisedEventFile', :foreign_key => :normalised_event_file_id
  has_many :normalised_event_errors, :class_name => 'NormalisedEventError', :foreign_key => :reprocessed_file_id
  has_many :reprocessed_files, :class_name => 'ReprocessedFile', :foreign_key => :reprocessed_file_id
  has_many :normalised_event_types, :through => normalised_event_errors
  has_many :currencies, :through => normalised_event_errors
  has_many :error_messages, :through => normalised_event_errors
  has_many :normalised_event_files, :through => normalised_event_errors
  has_many :bill_runs, :through => normalised_event_errors
  has_many :normalised_events, :through => normalised_event_errors
  has_many :normalised_event_files, :through => reprocessed_files
  has_many :task_queues, :through => reprocessed_files
  has_many :atlanta_operators, :through => reprocessed_files
  validates_presence_of :reprocessed_file_id
  validates_numericality_of :reprocessed_file_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :filename
  validates_length_of :filename, :allow_nil => false, :maximum => 255
  validates_presence_of :status_code
  validates_numericality_of :status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_presence_of :event_source
  validates_length_of :event_source, :allow_nil => false, :maximum => 40
  validates_presence_of :input_event_count
  validates_numericality_of :input_event_count, :allow_nil => false, :only_integer => true
  validates_numericality_of :normalised_event_file_id, :allow_nil => true, :only_integer => true
end
