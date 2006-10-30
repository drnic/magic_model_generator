class CustomerNodeDa < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
end
