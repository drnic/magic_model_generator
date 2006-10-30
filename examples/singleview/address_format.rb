class AddressFormat < ActiveRecord::Base
  belongs_to :address_format, :class_name => 'AddressFormat', :foreign_key => :address_format_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  has_many :address_formats, :class_name => 'AddressFormat', :foreign_key => :address_format_id
  has_many :customer_node_types, :class_name => 'CustomerNodeType', :foreign_key => :address_format_id
  has_many :equipment_types, :class_name => 'EquipmentType', :foreign_key => :address_format_id
  has_many :person_types, :class_name => 'PersonType', :foreign_key => :address_format_id
  has_many :service_types, :class_name => 'ServiceType', :foreign_key => :address_format_id
  has_many :atlanta_groups, :through => address_formats
  has_many :atlanta_operators, :through => address_formats
  has_many :entity_validations, :through => address_formats
  has_many :atlanta_groups, :through => customer_node_types
  has_many :icons, :through => customer_node_types
  has_many :atlanta_operators, :through => customer_node_types
  has_many :customer_node_types, :through => customer_node_types
  has_many :invoice_formats, :through => customer_node_types
  has_many :gl_codes, :through => customer_node_types
  has_many :atlanta_groups, :through => equipment_types
  has_many :icons, :through => equipment_types
  has_many :atlanta_operators, :through => equipment_types
  has_many :equipment_types, :through => equipment_types
  has_many :atlanta_groups, :through => person_types
  has_many :icons, :through => person_types
  has_many :atlanta_operators, :through => person_types
  has_many :person_types, :through => person_types
  has_many :entity_validations, :through => person_types
  has_many :atlanta_groups, :through => service_types
  has_many :icons, :through => service_types
  has_many :atlanta_operators, :through => service_types
  has_many :service_types, :through => service_types
  has_many :gl_codes, :through => service_types
  validates_presence_of :address_format_id
  validates_numericality_of :address_format_id, :allow_nil => false, :only_integer => true
  validates_presence_of :address_format_name
  validates_length_of :address_format_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :address_style_code
  validates_numericality_of :address_style_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
