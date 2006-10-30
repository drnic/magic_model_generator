class T2Historytable < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :entity_type
  validates_length_of :entity_type, :allow_nil => false, :maximum => 150
  validates_presence_of :entity_typeid
  validates_numericality_of :entity_typeid, :allow_nil => false, :only_integer => true
  validates_presence_of :entity_type_name
  validates_length_of :entity_type_name, :allow_nil => false, :maximum => 150
  validates_presence_of :entity_instance_id
  validates_numericality_of :entity_instance_id, :allow_nil => false, :only_integer => true
  validates_presence_of :modified_date
  validates_presence_of :operator
  validates_length_of :operator, :allow_nil => false, :maximum => 80
  validates_presence_of :action
  validates_length_of :action, :allow_nil => false, :maximum => 15
  validates_presence_of :status
  validates_length_of :status, :allow_nil => false, :maximum => 255
  validates_presence_of :reason_code
  validates_length_of :reason_code, :allow_nil => false, :maximum => 255
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :details
  validates_length_of :details, :allow_nil => false, :maximum => 4000
end
