class Icon < ActiveRecord::Base
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :bill_run_type_statuses, :class_name => 'BillRunTypeStatus', :foreign_key => :icon_id
  has_many :contract_types, :class_name => 'ContractType', :foreign_key => :icon_id
  has_many :customer_node_types, :class_name => 'CustomerNodeType', :foreign_key => :icon_id
  has_many :customer_query_types, :class_name => 'CustomerQueryType', :foreign_key => :icon_id
  has_many :equipment_types, :class_name => 'EquipmentType', :foreign_key => :icon_id
  has_many :facility_group_histories, :class_name => 'FacilityGroupHistory', :foreign_key => :icon_id
  has_many :icons, :class_name => 'Icon', :foreign_key => :icon_id
  has_many :person_types, :class_name => 'PersonType', :foreign_key => :icon_id
  has_many :product_histories, :class_name => 'ProductHistory', :foreign_key => :icon_id
  has_many :service_types, :class_name => 'ServiceType', :foreign_key => :icon_id
  has_many :bill_run_types, :through => bill_run_type_statuses
  has_many :atlanta_groups, :through => contract_types
  has_many :contract_types, :through => contract_types
  has_many :atlanta_operators, :through => contract_types
  has_many :entity_validations, :through => contract_types
  has_many :atlanta_groups, :through => customer_node_types
  has_many :address_formats, :through => customer_node_types
  has_many :atlanta_operators, :through => customer_node_types
  has_many :customer_node_types, :through => customer_node_types
  has_many :invoice_formats, :through => customer_node_types
  has_many :gl_codes, :through => customer_node_types
  has_many :atlanta_groups, :through => customer_query_types
  has_many :customer_query_types, :through => customer_query_types
  has_many :atlanta_operators, :through => customer_query_types
  has_many :atlanta_groups, :through => equipment_types
  has_many :address_formats, :through => equipment_types
  has_many :atlanta_operators, :through => equipment_types
  has_many :equipment_types, :through => equipment_types
  has_many :atlanta_groups, :through => facility_group_histories
  has_many :atlanta_operators, :through => facility_group_histories
  has_many :facility_groups, :through => facility_group_histories
  has_many :atlanta_groups, :through => icons
  has_many :atlanta_operators, :through => icons
  has_many :atlanta_groups, :through => person_types
  has_many :address_formats, :through => person_types
  has_many :atlanta_operators, :through => person_types
  has_many :person_types, :through => person_types
  has_many :entity_validations, :through => person_types
  has_many :atlanta_groups, :through => product_histories
  has_many :contract_types, :through => product_histories
  has_many :atlanta_operators, :through => product_histories
  has_many :products, :through => product_histories
  has_many :atlanta_groups, :through => service_types
  has_many :address_formats, :through => service_types
  has_many :atlanta_operators, :through => service_types
  has_many :service_types, :through => service_types
  has_many :gl_codes, :through => service_types
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :icon_name
  validates_length_of :icon_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
