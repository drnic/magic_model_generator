class DerivedAttribute < ActiveRecord::Base
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  has_many :customer_node_das, :class_name => 'CustomerNodeDa', :foreign_key => :derived_attribute_id
  has_many :customer_node_da_arrays, :class_name => 'CustomerNodeDaArray', :foreign_key => :derived_attribute_id
  has_many :customer_node_type_das, :class_name => 'CustomerNodeTypeDa', :foreign_key => :derived_attribute_id
  has_many :derived_attributes, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  has_many :derived_attribute_arrays, :class_name => 'DerivedAttributeArray', :foreign_key => :derived_attribute_id
  has_many :derived_attribute_histories, :class_name => 'DerivedAttributeHistory', :foreign_key => :derived_attribute_id
  has_many :derived_attribute_indices, :class_name => 'DerivedAttributeIndex', :foreign_key => :derived_attribute_id
  has_many :derived_attribute_values, :class_name => 'DerivedAttributeValue', :foreign_key => :derived_attribute_id
  has_many :product_derived_attributes, :class_name => 'ProductDerivedAttribute', :foreign_key => :derived_attribute_id
  has_many :service_das, :class_name => 'ServiceDa', :foreign_key => :derived_attribute_id
  has_many :service_da_arrays, :class_name => 'ServiceDaArray', :foreign_key => :derived_attribute_id
  has_many :service_type_das, :class_name => 'ServiceTypeDa', :foreign_key => :derived_attribute_id
  has_many :customer_nodes, :through => customer_node_das
  has_many :customer_nodes, :through => customer_node_da_arrays
  has_many :customer_node_types, :through => customer_node_type_das
  has_many :variable_defns, :through => derived_attributes
  has_many :atlanta_groups, :through => derived_attribute_histories
  has_many :atlanta_operators, :through => derived_attribute_histories
  has_many :entity_validations, :through => derived_attribute_histories
  has_many :products, :through => product_derived_attributes
  has_many :services, :through => service_das
  has_many :services, :through => service_da_arrays
  has_many :service_types, :through => service_type_das
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
