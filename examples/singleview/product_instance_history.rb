class ProductInstanceHistory < ActiveRecord::Base
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :contract, :class_name => 'Contract', :foreign_key => :contract_id
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :product_instance_status_code
  validates_numericality_of :product_instance_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :base_product_instance_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :contract_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_product_instance_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_product_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_product_instance_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_product_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :uncompleted_ind_code, :allow_nil => true, :only_integer => true
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
