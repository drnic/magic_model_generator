class DerivedAttributeValue < ActiveRecord::Base
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :condition_expr
  validates_length_of :condition_expr, :allow_nil => false, :maximum => 255
  validates_presence_of :value_expr
  validates_length_of :value_expr, :allow_nil => false, :maximum => 255
  validates_length_of :split_condition_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :event1_expression_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :event2_expression_list_id, :allow_nil => true, :only_integer => true
end
