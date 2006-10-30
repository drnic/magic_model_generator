class CanActCharge < ActiveRecord::Base
  validates_presence_of :charge_type
  validates_numericality_of :charge_type, :allow_nil => false, :only_integer => true
  validates_presence_of :entity_type
  validates_numericality_of :entity_type, :allow_nil => false, :only_integer => true
  validates_presence_of :entity_id
  validates_numericality_of :entity_id, :allow_nil => false, :only_integer => true
  validates_presence_of :charge_date
  validates_presence_of :charge_seq_nr
  validates_numericality_of :charge_seq_nr, :allow_nil => false, :only_integer => true
  validates_presence_of :query_id
  validates_numericality_of :query_id, :allow_nil => false, :only_integer => true
  validates_presence_of :modified_date
  validates_presence_of :modified_operator
  validates_numericality_of :modified_operator, :allow_nil => false, :only_integer => true
end
