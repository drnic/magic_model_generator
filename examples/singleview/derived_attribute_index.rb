class DerivedAttributeIndex < ActiveRecord::Base
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
  validates_presence_of :index_seqnr
  validates_numericality_of :index_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :index_expr
  validates_length_of :index_expr, :allow_nil => false, :maximum => 255
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
