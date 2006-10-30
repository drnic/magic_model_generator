class T2Taxclass < ActiveRecord::Base
  validates_presence_of :t2_cc_legal_entity_ref_code
  validates_numericality_of :t2_cc_legal_entity_ref_code, :allow_nil => false, :only_integer => true
  validates_presence_of :t2_postal_code
  validates_length_of :t2_postal_code, :allow_nil => false, :maximum => 10
  validates_presence_of :t2_cc_tax_class_ref_code
  validates_numericality_of :t2_cc_tax_class_ref_code, :allow_nil => false, :only_integer => true
end
