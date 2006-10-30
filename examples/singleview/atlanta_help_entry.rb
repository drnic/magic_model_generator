class AtlantaHelpEntry < ActiveRecord::Base
  belongs_to :atlanta_help_entry, :class_name => 'AtlantaHelpEntry', :foreign_key => :atlanta_help_entry_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atlanta_form_fields, :class_name => 'AtlantaFormField', :foreign_key => :atlanta_help_entry_id
  has_many :atlanta_help_entries, :class_name => 'AtlantaHelpEntry', :foreign_key => :atlanta_help_entry_id
  has_many :attribute_types, :class_name => 'AttributeType', :foreign_key => :atlanta_help_entry_id
  has_many :atlanta_forms, :through => atlanta_form_fields
  has_many :atlanta_groups, :through => atlanta_help_entries
  has_many :atlanta_operators, :through => atlanta_help_entries
  has_many :atlanta_groups, :through => attribute_types
  has_many :attribute_types, :through => attribute_types
  has_many :reference_types, :through => attribute_types
  has_many :atlanta_operators, :through => attribute_types
  validates_presence_of :atlanta_help_entry_id
  validates_numericality_of :atlanta_help_entry_id, :allow_nil => false, :only_integer => true
  validates_presence_of :help_entry_name
  validates_length_of :help_entry_name, :allow_nil => false, :maximum => 40
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :title
  validates_length_of :title, :allow_nil => false, :maximum => 255
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 4000
  validates_length_of :example, :allow_nil => true, :maximum => 4000
  validates_length_of :notes, :allow_nil => true, :maximum => 4000
  validates_length_of :business_rules, :allow_nil => true, :maximum => 4000
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
