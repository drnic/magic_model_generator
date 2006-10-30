class NormalisedEventFile < ActiveRecord::Base
  belongs_to :normalised_event_file, :class_name => 'NormalisedEventFile', :foreign_key => :normalised_event_file_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :normalised_event_ft, :class_name => 'NormalisedEventFt', :foreign_key => :normalised_event_ft_id
  has_many :normalised_events, :class_name => 'NormalisedEvent', :foreign_key => :normalised_event_file_id
  has_many :normalised_event_errors, :class_name => 'NormalisedEventError', :foreign_key => :normalised_event_file_id
  has_many :normalised_event_files, :class_name => 'NormalisedEventFile', :foreign_key => :normalised_event_file_id
  has_many :reprocessed_files, :class_name => 'ReprocessedFile', :foreign_key => :normalised_event_file_id
  has_many :subtotal_rating_deltas, :class_name => 'SubtotalRatingDelta', :foreign_key => :normalised_event_file_id
  has_many :subtotal_rating_values, :class_name => 'SubtotalRatingValue', :foreign_key => :normalised_event_file_id
  has_many :normalised_event_types, :through => normalised_events
  has_many :currencies, :through => normalised_events
  has_many :bill_runs, :through => normalised_events
  has_many :normalised_events, :through => normalised_events
  has_many :normalised_event_types, :through => normalised_event_errors
  has_many :currencies, :through => normalised_event_errors
  has_many :error_messages, :through => normalised_event_errors
  has_many :reprocessed_files, :through => normalised_event_errors
  has_many :bill_runs, :through => normalised_event_errors
  has_many :normalised_events, :through => normalised_event_errors
  has_many :task_queues, :through => normalised_event_files
  has_many :atlanta_operators, :through => normalised_event_files
  has_many :normalised_event_fts, :through => normalised_event_files
  has_many :task_queues, :through => reprocessed_files
  has_many :atlanta_operators, :through => reprocessed_files
  has_many :reprocessed_files, :through => reprocessed_files
  has_many :subtotals, :through => subtotal_rating_deltas
  has_many :customer_nodes, :through => subtotal_rating_deltas
  has_many :services, :through => subtotal_rating_deltas
  has_many :normalised_events, :through => subtotal_rating_deltas
  has_many :subtotals, :through => subtotal_rating_values
  has_many :customer_nodes, :through => subtotal_rating_values
  has_many :services, :through => subtotal_rating_values
  validates_presence_of :normalised_event_file_id
  validates_numericality_of :normalised_event_file_id, :allow_nil => false, :only_integer => true
  validates_presence_of :filename
  validates_length_of :filename, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_presence_of :normalised_event_ft_id
  validates_numericality_of :normalised_event_ft_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_start_date
  validates_presence_of :event_source
  validates_length_of :event_source, :allow_nil => false, :maximum => 40
  validates_length_of :rater_version, :allow_nil => true, :maximum => 20
  validates_numericality_of :external_input_event_count, :allow_nil => true, :only_integer => true
  validates_presence_of :input_event_count
  validates_numericality_of :input_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :decoded_event_count
  validates_numericality_of :decoded_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :corrupt_event_count
  validates_numericality_of :corrupt_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :discarded_event_count
  validates_numericality_of :discarded_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :rated_event_count
  validates_numericality_of :rated_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :unrated_event_count
  validates_numericality_of :unrated_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :tracer_event_count
  validates_numericality_of :tracer_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :norm_error_event_count
  validates_numericality_of :norm_error_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :rating_error_event_count
  validates_numericality_of :rating_error_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :reprocessed_event_count
  validates_numericality_of :reprocessed_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :reprocessed_error_event_count
  validates_numericality_of :reprocessed_error_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :deleted_event_count
  validates_numericality_of :deleted_event_count, :allow_nil => false, :only_integer => true
  validates_presence_of :deleted_error_event_count
  validates_numericality_of :deleted_error_event_count, :allow_nil => false, :only_integer => true
end
