class EntityValidationList < ActiveRecord::Base
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  belongs_to :attribute_type, :class_name => 'AttributeType', :foreign_key => :attribute_type_id
  validates_presence_of :entity_validation_id
  validates_numericality_of :entity_validation_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :attribute_type_id
  validates_numericality_of :attribute_type_id, :allow_nil => false, :only_integer => true
  validates_length_of :default_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :control_next_ind_code, :allow_nil => true, :only_integer => true
end
