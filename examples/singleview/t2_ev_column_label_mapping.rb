class T2EvColumnLabelMapping < ActiveRecord::Base
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  validates_presence_of :entity_validation_id
  validates_numericality_of :entity_validation_id, :allow_nil => false, :only_integer => true
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 64
  validates_presence_of :column_label
  validates_length_of :column_label, :allow_nil => false, :maximum => 64
end
