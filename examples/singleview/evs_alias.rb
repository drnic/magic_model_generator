class EvsAlias < ActiveRecord::Base
  validates_presence_of :evs_alias_id
  validates_numericality_of :evs_alias_id, :allow_nil => false, :only_integer => true
  validates_presence_of :validation_table_name
  validates_length_of :validation_table_name, :allow_nil => false, :maximum => 40
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 40
  validates_presence_of :real_column_name
  validates_length_of :real_column_name, :allow_nil => false, :maximum => 40
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
end
