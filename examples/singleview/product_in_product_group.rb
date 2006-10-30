class ProductInProductGroup < ActiveRecord::Base
  belongs_to :product_group, :class_name => 'ProductGroup', :foreign_key => :product_group_id
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  validates_presence_of :product_group_id
  validates_numericality_of :product_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
end
