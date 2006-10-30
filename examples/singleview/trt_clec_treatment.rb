class TrtClecTreatment < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  validates_presence_of :temp_data_id
  validates_numericality_of :temp_data_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_seqnr, :allow_nil => true, :only_integer => true
  validates_numericality_of :trt_action_code, :allow_nil => true, :only_integer => true
end
