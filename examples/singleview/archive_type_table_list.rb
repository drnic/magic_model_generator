class ArchiveTypeTableList < ActiveRecord::Base
  belongs_to :archive_type, :class_name => 'ArchiveType', :foreign_key => :archive_type_id
  validates_presence_of :archive_type_id
  validates_numericality_of :archive_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_numericality_of :subtype_archive_type_id, :allow_nil => true, :only_integer => true
  validates_length_of :table_name, :allow_nil => true, :maximum => 30
  validates_length_of :where_clause, :allow_nil => true, :maximum => 2000
  validates_numericality_of :and_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_numericality_of :disable_generation_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :hint_text, :allow_nil => true, :maximum => 255
end
