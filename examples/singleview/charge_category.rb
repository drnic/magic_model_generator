class ChargeCategory < ActiveRecord::Base
  belongs_to :charge_category, :class_name => 'ChargeCategory', :foreign_key => :charge_category_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :charge_categories, :class_name => 'ChargeCategory', :foreign_key => :charge_category_id
  has_many :customer_node_charge_cats, :class_name => 'CustomerNodeChargeCat', :foreign_key => :charge_category_id
  has_many :customer_node_type_ccs, :class_name => 'CustomerNodeTypeCc', :foreign_key => :charge_category_id
  has_many :product_tariffs, :class_name => 'ProductTariff', :foreign_key => :charge_category_id
  has_many :service_charge_categories, :class_name => 'ServiceChargeCategory', :foreign_key => :charge_category_id
  has_many :service_type_ccs, :class_name => 'ServiceTypeCc', :foreign_key => :charge_category_id
  has_many :tariff_histories, :class_name => 'TariffHistory', :foreign_key => :charge_category_id
  has_many :atlanta_groups, :through => charge_categories
  has_many :atlanta_operators, :through => charge_categories
  has_many :customer_nodes, :through => customer_node_charge_cats
  has_many :customer_node_types, :through => customer_node_type_ccs
  has_many :tariffs, :through => product_tariffs
  has_many :products, :through => product_tariffs
  has_many :services, :through => service_charge_categories
  has_many :service_types, :through => service_type_ccs
  has_many :atlanta_groups, :through => tariff_histories
  has_many :currencies, :through => tariff_histories
  has_many :atlanta_operators, :through => tariff_histories
  has_many :tariffs, :through => tariff_histories
  has_many :receivable_types, :through => tariff_histories
  validates_presence_of :charge_category_id
  validates_numericality_of :charge_category_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :charge_category_name
  validates_length_of :charge_category_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :from_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_customer_node_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_customer_node_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_account_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
