class AtlantaFormField < ActiveRecord::Base
  belongs_to :atlanta_form, :class_name => 'AtlantaForm', :foreign_key => :atlanta_form_id
  belongs_to :atlanta_help_entry, :class_name => 'AtlantaHelpEntry', :foreign_key => :atlanta_help_entry_id
  validates_presence_of :atlanta_form_id
  validates_numericality_of :atlanta_form_id, :allow_nil => false, :only_integer => true
  validates_presence_of :field_name
  validates_length_of :field_name, :allow_nil => false, :maximum => 80
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_numericality_of :atlanta_help_entry_id, :allow_nil => true, :only_integer => true
end
