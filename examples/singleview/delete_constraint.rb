class DeleteConstraint < ActiveRecord::Base
  validates_presence_of :entity_name
  validates_length_of :entity_name, :allow_nil => false, :maximum => 30
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
  validates_numericality_of :date_ranged_ind_code, :allow_nil => true, :only_integer => true
end
