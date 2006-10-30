class EquipmentType < ActiveRecord::Base
  belongs_to :equipment_type, :class_name => 'EquipmentType', :foreign_key => :equipment_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :address_format, :class_name => 'AddressFormat', :foreign_key => :address_format_id
  has_many :equipment_histories, :class_name => 'EquipmentHistory', :foreign_key => :equipment_type_id
  has_many :equipment_types, :class_name => 'EquipmentType', :foreign_key => :equipment_type_id
  has_many :equipment_type_variables, :class_name => 'EquipmentTypeVariable', :foreign_key => :equipment_type_id
  has_many :product_service_type_equips, :class_name => 'ProductServiceTypeEquip', :foreign_key => :equipment_type_id
  has_many :service_type_equip_types, :class_name => 'ServiceTypeEquipType', :foreign_key => :equipment_type_id
  has_many :atlanta_groups, :through => equipment_histories
  has_many :atlanta_operators, :through => equipment_histories
  has_many :equipment, :through => equipment_histories
  has_many :atlanta_groups, :through => equipment_types
  has_many :icons, :through => equipment_types
  has_many :address_formats, :through => equipment_types
  has_many :atlanta_operators, :through => equipment_types
  has_many :variable_defns, :through => equipment_type_variables
  has_many :product_service_types, :through => product_service_type_equips
  has_many :service_types, :through => service_type_equip_types
  validates_presence_of :equipment_type_id
  validates_numericality_of :equipment_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :equipment_type_name
  validates_length_of :equipment_type_name, :allow_nil => false, :maximum => 60
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :equipment_form_code
  validates_numericality_of :equipment_form_code, :allow_nil => false, :only_integer => true
  validates_presence_of :status_reference_type_id
  validates_numericality_of :status_reference_type_id, :allow_nil => false, :only_integer => true
  validates_length_of :serial_number_encode_expr, :allow_nil => true, :maximum => 255
  validates_length_of :serial_number_decode_expr, :allow_nil => true, :maximum => 255
  validates_presence_of :network_address_ind_code
  validates_numericality_of :network_address_ind_code, :allow_nil => false, :only_integer => true
  validates_length_of :network_address_encode_expr, :allow_nil => true, :maximum => 255
  validates_length_of :network_address_decode_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :default_warranty, :allow_nil => true, :only_integer => true
  validates_numericality_of :default_warranty_unit_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :quarantine_period, :allow_nil => true, :only_integer => true
  validates_numericality_of :quarantine_period_unit_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :quarantine_status_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :address_format_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :equipment_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :customer_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :search_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :realloc_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :split_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
