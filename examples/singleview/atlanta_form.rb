class AtlantaForm < ActiveRecord::Base
  belongs_to :atlanta_form, :class_name => 'AtlantaForm', :foreign_key => :atlanta_form_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atlanta_forms, :class_name => 'AtlantaForm', :foreign_key => :atlanta_form_id
  has_many :atlanta_form_fields, :class_name => 'AtlantaFormField', :foreign_key => :atlanta_form_id
  has_many :atlanta_groups, :through => atlanta_forms
  has_many :atlanta_operators, :through => atlanta_forms
  has_many :atlanta_help_entries, :through => atlanta_form_fields
  validates_presence_of :atlanta_form_id
  validates_numericality_of :atlanta_form_id, :allow_nil => false, :only_integer => true
  validates_presence_of :form_name
  validates_length_of :form_name, :allow_nil => false, :maximum => 40
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_length_of :help_context, :allow_nil => true, :maximum => 80
  validates_length_of :help_file_name, :allow_nil => true, :maximum => 80
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
