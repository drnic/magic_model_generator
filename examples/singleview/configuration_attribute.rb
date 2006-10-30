class ConfigurationAttribute < ActiveRecord::Base
  belongs_to :configuration_item, :class_name => 'ConfigurationItem', :foreign_key => :configuration_item_id
  belongs_to :configuration_attr_type, :class_name => 'ConfigurationAttrType', :foreign_key => :configuration_attr_type_id
  validates_presence_of :configuration_item_id
  validates_numericality_of :configuration_item_id, :allow_nil => false, :only_integer => true
  validates_presence_of :configuration_attr_type_id
  validates_numericality_of :configuration_attr_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :related_configuration_item_id, :allow_nil => true, :only_integer => true
  validates_length_of :value, :allow_nil => true, :maximum => 255
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
