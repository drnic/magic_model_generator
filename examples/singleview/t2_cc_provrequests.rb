class T2CcProvrequests < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  validates_presence_of :request_id
  validates_numericality_of :request_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :operator_id
  validates_numericality_of :operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :req_date
  validates_presence_of :status_flag
  validates_numericality_of :status_flag, :allow_nil => false, :only_integer => true
  validates_presence_of :success_status
  validates_numericality_of :success_status, :allow_nil => false, :only_integer => true
  validates_presence_of :failed_status
  validates_numericality_of :failed_status, :allow_nil => false, :only_integer => true
end
