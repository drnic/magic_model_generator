class ServiceTypeCc < ActiveRecord::Base
  belongs_to :service_type, :class_name => 'ServiceType', :foreign_key => :service_type_id
  belongs_to :charge_category, :class_name => 'ChargeCategory', :foreign_key => :charge_category_id
  validates_presence_of :service_type_id
  validates_numericality_of :service_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :charge_category_id
  validates_numericality_of :charge_category_id, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_numericality_of :from_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_customer_node_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_customer_node_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_account_id, :allow_nil => true, :only_integer => true
end
