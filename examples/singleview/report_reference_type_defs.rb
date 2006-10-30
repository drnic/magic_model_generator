class ReportReferenceTypeDefs < ActiveRecord::Base
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :type_id_table
  validates_length_of :type_id_table, :allow_nil => false, :maximum => 30
  validates_length_of :validation_id_column, :allow_nil => true, :maximum => 30
  validates_presence_of :type_id_column
  validates_length_of :type_id_column, :allow_nil => false, :maximum => 30
  validates_length_of :default_type_label, :allow_nil => true, :maximum => 30
end
