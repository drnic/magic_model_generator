class SubtotalRatingValue < ActiveRecord::Base
  belongs_to :subtotal, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :normalised_event_file, :class_name => 'NormalisedEventFile', :foreign_key => :normalised_event_file_id
  validates_presence_of :subtotal_id
  validates_numericality_of :subtotal_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :service_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :customer_node_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :normalised_event_file_id, :allow_nil => true, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :event_start_date
  validates_presence_of :event_end_date
  validates_presence_of :value
  validates_numericality_of :value, :allow_nil => false
  validates_length_of :key_value, :allow_nil => true, :maximum => 255
  validates_presence_of :partition_nr
  validates_numericality_of :partition_nr, :allow_nil => false, :only_integer => true
end
