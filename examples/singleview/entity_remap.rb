class EntityRemap < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :entity_name
  validates_length_of :entity_name, :allow_nil => false, :maximum => 30
  validates_numericality_of :old_entity_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :new_entity_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :parent_entity_id, :allow_nil => true, :only_integer => true
  validates_length_of :partition_name, :allow_nil => true, :maximum => 30
  validates_presence_of :dest_partition_nr
  validates_numericality_of :dest_partition_nr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :status_code
  validates_numericality_of :status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :rows_updated, :allow_nil => true, :only_integer => true
  validates_numericality_of :error_message_id, :allow_nil => true, :only_integer => true
  validates_length_of :error_message, :allow_nil => true, :maximum => 4000
  validates_numericality_of :customer_node_id, :allow_nil => true, :only_integer => true
end
