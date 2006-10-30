class XpsiTrtRevokeProdInst < ActiveRecord::Base
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  validates_presence_of :task_id
  validates_numericality_of :task_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_date
  validates_presence_of :cq_customer_query_id
  validates_numericality_of :cq_customer_query_id, :allow_nil => false, :only_integer => true
  validates_presence_of :qp_progress_seqnr
  validates_numericality_of :qp_progress_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
end
