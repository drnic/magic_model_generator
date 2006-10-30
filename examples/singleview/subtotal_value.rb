class SubtotalValue < ActiveRecord::Base
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :subtotal, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  validates_presence_of :invoice_id
  validates_numericality_of :invoice_id, :allow_nil => false, :only_integer => true
  validates_presence_of :root_customer_node_id
  validates_numericality_of :root_customer_node_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :customer_node_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_id, :allow_nil => true, :only_integer => true
  validates_presence_of :subtotal_id
  validates_numericality_of :subtotal_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_date
  validates_presence_of :last_modified
  validates_numericality_of :charge, :allow_nil => true
  validates_length_of :key_value, :allow_nil => true, :maximum => 255
end
