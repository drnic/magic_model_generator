class EvsAttributeTypeKey < ActiveRecord::Base
  belongs_to :attribute_type, :class_name => 'AttributeType', :foreign_key => :attribute_type_id
  validates_presence_of :attribute_type_id
  validates_numericality_of :attribute_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :key
  validates_length_of :key, :allow_nil => false, :maximum => 40
end
