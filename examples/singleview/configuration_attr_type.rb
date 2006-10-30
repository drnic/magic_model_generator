class ConfigurationAttrType < ActiveRecord::Base
  belongs_to :configuration_attr_type, :class_name => 'ConfigurationAttrType', :foreign_key => :configuration_attr_type_id
  belongs_to :configuration_item_type, :class_name => 'ConfigurationItemType', :foreign_key => :configuration_item_type_id
  belongs_to :attribute_type, :class_name => 'AttributeType', :foreign_key => :attribute_type_id
  has_many :configuration_attr_types, :class_name => 'ConfigurationAttrType', :foreign_key => :configuration_attr_type_id
  has_many :configuration_attributes, :class_name => 'ConfigurationAttribute', :foreign_key => :configuration_attr_type_id
  has_many :attribute_types, :through => configuration_attr_types
  has_many :configuration_item_types, :through => configuration_attr_types
  has_many :configuration_items, :through => configuration_attributes
  validates_presence_of :configuration_attr_type_id
  validates_numericality_of :configuration_attr_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :configuration_item_type_id
  validates_numericality_of :configuration_item_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :configuration_attr_name
  validates_length_of :configuration_attr_name, :allow_nil => false, :maximum => 30
  validates_presence_of :configuration_attr_type_seqnr
  validates_numericality_of :configuration_attr_type_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :attribute_type_id
  validates_numericality_of :attribute_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :related_config_item_type_id, :allow_nil => true, :only_integer => true
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
