class ReferenceCode < ActiveRecord::Base
  belongs_to :reference_type, :class_name => 'ReferenceType', :foreign_key => :reference_type_id
  validates_presence_of :reference_type_id
  validates_numericality_of :reference_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :reference_code
  validates_numericality_of :reference_code, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :code_label
  validates_length_of :code_label, :allow_nil => false, :maximum => 40
  validates_presence_of :abbreviation
  validates_length_of :abbreviation, :allow_nil => false, :maximum => 60
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_presence_of :valid_ind_code
  validates_numericality_of :valid_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :child_reference_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :child_attribute_type_id, :allow_nil => true, :only_integer => true
end
