class ServiceTypeDa < ActiveRecord::Base
  belongs_to :service_type, :class_name => 'ServiceType', :foreign_key => :service_type_id
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  validates_presence_of :service_type_id
  validates_numericality_of :service_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
end
