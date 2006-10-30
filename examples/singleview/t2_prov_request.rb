class T2ProvRequest < ActiveRecord::Base
  belongs_to :t2_prov_request, :class_name => 'T2ProvRequest', :foreign_key => :t2_prov_request_id
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  has_many :t2_prov_requests, :class_name => 'T2ProvRequest', :foreign_key => :t2_prov_request_id
  has_many :products, :through => t2_prov_requests
  has_many :product_instances, :through => t2_prov_requests
  validates_presence_of :t2_prov_request_id
  validates_numericality_of :t2_prov_request_id, :allow_nil => false, :only_integer => true
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_date
  validates_presence_of :trigger_level
  validates_numericality_of :trigger_level, :allow_nil => false, :only_integer => true
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :legal_entity
  validates_numericality_of :legal_entity, :allow_nil => false, :only_integer => true
  validates_numericality_of :status, :allow_nil => true, :only_integer => true
  validates_numericality_of :request_result_status, :allow_nil => true, :only_integer => true
  validates_numericality_of :query_id, :allow_nil => true, :only_integer => true
  validates_presence_of :atlanta_op_id
  validates_numericality_of :atlanta_op_id, :allow_nil => false, :only_integer => true
  validates_presence_of :notify_event_name
  validates_length_of :notify_event_name, :allow_nil => false, :maximum => 255
  validates_presence_of :operator_full_name
  validates_length_of :operator_full_name, :allow_nil => false, :maximum => 255
  validates_numericality_of :parent_req_id, :allow_nil => true, :only_integer => true
  validates_presence_of :retry_ctr
  validates_numericality_of :retry_ctr, :allow_nil => false, :only_integer => true
  validates_numericality_of :prov_system, :allow_nil => true, :only_integer => true
end
