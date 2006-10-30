class PlanTable < ActiveRecord::Base
  validates_length_of :statement_id, :allow_nil => true, :maximum => 30
  validates_length_of :remarks, :allow_nil => true, :maximum => 80
  validates_length_of :operation, :allow_nil => true, :maximum => 30
  validates_length_of :options, :allow_nil => true, :maximum => 30
  validates_length_of :object_node, :allow_nil => true, :maximum => 128
  validates_length_of :object_owner, :allow_nil => true, :maximum => 30
  validates_length_of :object_name, :allow_nil => true, :maximum => 30
  validates_numericality_of :object_instance, :allow_nil => true, :only_integer => true
  validates_length_of :object_type, :allow_nil => true, :maximum => 30
  validates_length_of :optimizer, :allow_nil => true, :maximum => 255
  validates_numericality_of :search_columns, :allow_nil => true
  validates_numericality_of :parent_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :cost, :allow_nil => true, :only_integer => true
  validates_numericality_of :cardinality, :allow_nil => true, :only_integer => true
  validates_numericality_of :bytes, :allow_nil => true, :only_integer => true
  validates_length_of :other_tag, :allow_nil => true, :maximum => 255
  validates_length_of :partition_start, :allow_nil => true, :maximum => 255
  validates_length_of :partition_stop, :allow_nil => true, :maximum => 255
  validates_numericality_of :partition_id, :allow_nil => true, :only_integer => true
  validates_length_of :distribution, :allow_nil => true, :maximum => 30
  validates_numericality_of :cpu_cost, :allow_nil => true, :only_integer => true
  validates_numericality_of :io_cost, :allow_nil => true, :only_integer => true
  validates_numericality_of :temp_space, :allow_nil => true, :only_integer => true
  validates_length_of :access_predicates, :allow_nil => true, :maximum => 4000
  validates_length_of :filter_predicates, :allow_nil => true, :maximum => 4000
end
