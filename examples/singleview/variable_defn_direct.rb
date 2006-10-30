class VariableDefnDirect < ActiveRecord::Base
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :last_modified
  validates_presence_of :view_name
  validates_length_of :view_name, :allow_nil => false, :maximum => 30
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :column_nr
  validates_numericality_of :column_nr, :allow_nil => false, :only_integer => true
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
