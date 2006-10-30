class ProductDerivedAttribute < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
end
