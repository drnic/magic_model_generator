class ProductCompatibility < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :compatible_product_id
  validates_numericality_of :compatible_product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_numericality_of :reuse_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :display_allocation_ind_code, :allow_nil => true, :only_integer => true
end
