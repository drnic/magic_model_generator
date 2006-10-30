class ProductGroup < ActiveRecord::Base
  belongs_to :product_group, :class_name => 'ProductGroup', :foreign_key => :product_group_id
  has_many :product_groups, :class_name => 'ProductGroup', :foreign_key => :product_group_id
  has_many :product_group_histories, :class_name => 'ProductGroupHistory', :foreign_key => :product_group_id
  has_many :product_in_product_groups, :class_name => 'ProductInProductGroup', :foreign_key => :product_group_id
  has_many :atlanta_groups, :through => product_group_histories
  has_many :atlanta_operators, :through => product_group_histories
  has_many :products, :through => product_in_product_groups
  validates_presence_of :product_group_id
  validates_numericality_of :product_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
