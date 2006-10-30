class TableImportOrder < ActiveRecord::Base
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_presence_of :import_order
  validates_numericality_of :import_order, :allow_nil => false, :only_integer => true
end
