class ReportReferenceType < ActiveRecord::Base
  belongs_to :reference_type, :class_name => 'ReferenceType', :foreign_key => :reference_type_id
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :validation_table_name
  validates_length_of :validation_table_name, :allow_nil => false, :maximum => 30
  validates_length_of :parent_table_name, :allow_nil => true, :maximum => 30
  validates_presence_of :type_id
  validates_numericality_of :type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :reference_type_id, :allow_nil => true, :only_integer => true
  validates_presence_of :type_id_table
  validates_length_of :type_id_table, :allow_nil => false, :maximum => 30
  validates_length_of :entity_validation_id_column, :allow_nil => true, :maximum => 30
end
