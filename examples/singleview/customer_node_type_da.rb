class CustomerNodeTypeDa < ActiveRecord::Base
  belongs_to :customer_node_type, :class_name => 'CustomerNodeType', :foreign_key => :customer_node_type_id
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  validates_presence_of :customer_node_type_id
  validates_numericality_of :customer_node_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
end
