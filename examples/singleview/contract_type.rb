class ContractType < ActiveRecord::Base
  belongs_to :contract_type, :class_name => 'ContractType', :foreign_key => :contract_type_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  has_many :contract_histories, :class_name => 'ContractHistory', :foreign_key => :contract_type_id
  has_many :contract_types, :class_name => 'ContractType', :foreign_key => :contract_type_id
  has_many :contract_type_products, :class_name => 'ContractTypeProduct', :foreign_key => :contract_type_id
  has_many :product_histories, :class_name => 'ProductHistory', :foreign_key => :contract_type_id
  has_many :atlanta_groups, :through => contract_histories
  has_many :customer_nodes, :through => contract_histories
  has_many :atlanta_operators, :through => contract_histories
  has_many :contracts, :through => contract_histories
  has_many :people, :through => contract_histories
  has_many :atlanta_groups, :through => contract_types
  has_many :icons, :through => contract_types
  has_many :atlanta_operators, :through => contract_types
  has_many :entity_validations, :through => contract_types
  has_many :service_types, :through => contract_type_products
  has_many :products, :through => contract_type_products
  has_many :atlanta_groups, :through => product_histories
  has_many :icons, :through => product_histories
  has_many :atlanta_operators, :through => product_histories
  has_many :products, :through => product_histories
  validates_presence_of :contract_type_id
  validates_numericality_of :contract_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :contract_type_name
  validates_length_of :contract_type_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :contract_form_code
  validates_numericality_of :contract_form_code, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :account_manager_operator_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :contract_duration, :allow_nil => true, :only_integer => true
  validates_numericality_of :contract_duration_unit_code, :allow_nil => true, :only_integer => true
  validates_presence_of :fixed_duration_ind_code
  validates_numericality_of :fixed_duration_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :contract_status_code
  validates_numericality_of :contract_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :renegotiate_offset, :allow_nil => true, :only_integer => true
  validates_numericality_of :renegotiate_offset_unit_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :expiry_warn_offset, :allow_nil => true, :only_integer => true
  validates_numericality_of :expiry_warn_offset_unit_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :grace_period, :allow_nil => true, :only_integer => true
  validates_numericality_of :grace_period_unit_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :sales_channel_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :search_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
