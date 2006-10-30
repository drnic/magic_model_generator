class ServiceHistory < ActiveRecord::Base
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :service_type, :class_name => 'ServiceType', :foreign_key => :service_type_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  belongs_to :contract, :class_name => 'Contract', :foreign_key => :contract_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  validates_presence_of :service_id
  validates_numericality_of :service_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :service_name
  validates_length_of :service_name, :allow_nil => false, :maximum => 64
  validates_length_of :network_name, :allow_nil => true, :maximum => 64
  validates_presence_of :service_type_id
  validates_numericality_of :service_type_id, :allow_nil => false, :only_integer => true
  validates_length_of :service_subtype, :allow_nil => true, :maximum => 40
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :service_status_code
  validates_numericality_of :service_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :base_product_instance_id
  validates_numericality_of :base_product_instance_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :person_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :contract_id, :allow_nil => true, :only_integer => true
  validates_length_of :contract_reference, :allow_nil => true, :maximum => 40
  validates_numericality_of :a_address_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :b_address_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :billing_priority, :allow_nil => true, :only_integer => true
  validates_numericality_of :billing_complexity, :allow_nil => true, :only_integer => true
  validates_length_of :grade_of_service, :allow_nil => true, :maximum => 40
  validates_length_of :service_usage, :allow_nil => true, :maximum => 40
  validates_length_of :comms_type, :allow_nil => true, :maximum => 40
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
  validates_length_of :industry_general_1, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_2, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_3, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_4, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_5, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_6, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_7, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_8, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_9, :allow_nil => true, :maximum => 255
  validates_length_of :industry_general_10, :allow_nil => true, :maximum => 255
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
end
