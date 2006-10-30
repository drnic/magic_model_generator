class ContractTypeProduct < ActiveRecord::Base
  belongs_to :contract_type, :class_name => 'ContractType', :foreign_key => :contract_type_id
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :service_type, :class_name => 'ServiceType', :foreign_key => :service_type_id
  validates_presence_of :contract_type_id
  validates_numericality_of :contract_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :service_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :companion_product_id, :allow_nil => true, :only_integer => true
end
