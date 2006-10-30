class Product < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  has_many :contract_type_products, :class_name => 'ContractTypeProduct', :foreign_key => :product_id
  has_many :products, :class_name => 'Product', :foreign_key => :product_id
  has_many :product_compatibilities, :class_name => 'ProductCompatibility', :foreign_key => :product_id
  has_many :product_derived_attributes, :class_name => 'ProductDerivedAttribute', :foreign_key => :product_id
  has_many :product_facility_groups, :class_name => 'ProductFacilityGroup', :foreign_key => :product_id
  has_many :product_histories, :class_name => 'ProductHistory', :foreign_key => :product_id
  has_many :product_in_product_groups, :class_name => 'ProductInProductGroup', :foreign_key => :product_id
  has_many :product_instance_histories, :class_name => 'ProductInstanceHistory', :foreign_key => :product_id
  has_many :product_instance_services, :class_name => 'ProductInstanceService', :foreign_key => :product_id
  has_many :product_payment_items, :class_name => 'ProductPaymentItem', :foreign_key => :product_id
  has_many :product_service_types, :class_name => 'ProductServiceType', :foreign_key => :product_id
  has_many :product_subtotals, :class_name => 'ProductSubtotal', :foreign_key => :product_id
  has_many :product_tariffs, :class_name => 'ProductTariff', :foreign_key => :product_id
  has_many :t2_cc_provrequests, :class_name => 'T2CcProvrequests', :foreign_key => :product_id
  has_many :t2_prov_requests, :class_name => 'T2ProvRequest', :foreign_key => :product_id
  has_many :contract_types, :through => contract_type_products
  has_many :service_types, :through => contract_type_products
  has_many :derived_attributes, :through => product_derived_attributes
  has_many :facility_groups, :through => product_facility_groups
  has_many :atlanta_groups, :through => product_histories
  has_many :contract_types, :through => product_histories
  has_many :icons, :through => product_histories
  has_many :atlanta_operators, :through => product_histories
  has_many :product_groups, :through => product_in_product_groups
  has_many :customer_nodes, :through => product_instance_histories
  has_many :atlanta_operators, :through => product_instance_histories
  has_many :contracts, :through => product_instance_histories
  has_many :product_instances, :through => product_instance_histories
  has_many :services, :through => product_instance_services
  has_many :product_instances, :through => product_instance_services
  has_many :service_types, :through => product_service_types
  has_many :product_service_types, :through => product_service_types
  has_many :subtotals, :through => product_subtotals
  has_many :gl_codes, :through => product_subtotals
  has_many :tariffs, :through => product_tariffs
  has_many :charge_categories, :through => product_tariffs
  has_many :customer_nodes, :through => t2_cc_provrequests
  has_many :t2_prov_requests, :through => t2_prov_requests
  has_many :product_instances, :through => t2_prov_requests
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
