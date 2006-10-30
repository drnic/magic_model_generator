class RshuCmnT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :normalised_event_type, :class_name => 'NormalisedEventType', :foreign_key => :normalised_event_type_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :service_id
  validates_numericality_of :service_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_node_name
  validates_length_of :root_node_name, :allow_nil => false, :maximum => 80
  validates_presence_of :node_name
  validates_length_of :node_name, :allow_nil => false, :maximum => 80
  validates_presence_of :account_name
  validates_length_of :account_name, :allow_nil => false, :maximum => 30
  validates_presence_of :customer_node_status
  validates_length_of :customer_node_status, :allow_nil => false, :maximum => 40
  validates_presence_of :service_name
  validates_length_of :service_name, :allow_nil => false, :maximum => 40
  validates_presence_of :service_type_name
  validates_length_of :service_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :normalised_event_type_id
  validates_numericality_of :normalised_event_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :total_amount_charged, :allow_nil => true
end
