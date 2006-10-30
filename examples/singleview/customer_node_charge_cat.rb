class CustomerNodeChargeCat < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :charge_category, :class_name => 'ChargeCategory', :foreign_key => :charge_category_id
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :charge_category_id
  validates_numericality_of :charge_category_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :proportion
  validates_numericality_of :proportion, :allow_nil => false
  validates_numericality_of :from_account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_account_class_code, :allow_nil => true, :only_integer => true
  validates_presence_of :to_account_id
  validates_numericality_of :to_account_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :to_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :to_account_class_code
  validates_numericality_of :to_account_class_code, :allow_nil => false, :only_integer => true
end
