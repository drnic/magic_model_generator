class ServiceType < ActiveRecord::Base
  belongs_to :service_type, :class_name => 'ServiceType', :foreign_key => :service_type_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  belongs_to :address_format, :class_name => 'AddressFormat', :foreign_key => :address_format_id
  has_many :contract_type_products, :class_name => 'ContractTypeProduct', :foreign_key => :service_type_id
  has_many :product_service_types, :class_name => 'ProductServiceType', :foreign_key => :service_type_id
  has_many :service_histories, :class_name => 'ServiceHistory', :foreign_key => :service_type_id
  has_many :service_types, :class_name => 'ServiceType', :foreign_key => :service_type_id
  has_many :service_type_ccs, :class_name => 'ServiceTypeCc', :foreign_key => :service_type_id
  has_many :service_type_das, :class_name => 'ServiceTypeDa', :foreign_key => :service_type_id
  has_many :service_type_equip_types, :class_name => 'ServiceTypeEquipType', :foreign_key => :service_type_id
  has_many :contract_types, :through => contract_type_products
  has_many :products, :through => contract_type_products
  has_many :products, :through => product_service_types
  has_many :product_service_types, :through => product_service_types
  has_many :customer_nodes, :through => service_histories
  has_many :atlanta_operators, :through => service_histories
  has_many :services, :through => service_histories
  has_many :gl_codes, :through => service_histories
  has_many :contracts, :through => service_histories
  has_many :people, :through => service_histories
  has_many :atlanta_groups, :through => service_types
  has_many :icons, :through => service_types
  has_many :address_formats, :through => service_types
  has_many :atlanta_operators, :through => service_types
  has_many :gl_codes, :through => service_types
  has_many :charge_categories, :through => service_type_ccs
  has_many :derived_attributes, :through => service_type_das
  has_many :equipment_types, :through => service_type_equip_types
  validates_presence_of :service_type_id
  validates_numericality_of :service_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :service_type_name
  validates_length_of :service_type_name, :allow_nil => false, :maximum => 60
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :service_form_code
  validates_numericality_of :service_form_code, :allow_nil => false, :only_integer => true
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :address_format_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :person_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :contract_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
