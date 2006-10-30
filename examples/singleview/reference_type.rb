class ReferenceType < ActiveRecord::Base
  belongs_to :reference_type, :class_name => 'ReferenceType', :foreign_key => :reference_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :attribute_types, :class_name => 'AttributeType', :foreign_key => :reference_type_id
  has_many :reference_codes, :class_name => 'ReferenceCode', :foreign_key => :reference_type_id
  has_many :reference_types, :class_name => 'ReferenceType', :foreign_key => :reference_type_id
  has_many :report_reference_types, :class_name => 'ReportReferenceType', :foreign_key => :reference_type_id
  has_many :summary_of_change_evs, :class_name => 'SummaryOfChangeEv', :foreign_key => :reference_type_id
  has_many :atlanta_groups, :through => attribute_types
  has_many :attribute_types, :through => attribute_types
  has_many :atlanta_operators, :through => attribute_types
  has_many :atlanta_help_entries, :through => attribute_types
  has_many :atlanta_groups, :through => reference_types
  has_many :atlanta_operators, :through => reference_types
  has_many :summary_of_change_views, :through => summary_of_change_evs
  validates_presence_of :reference_type_id
  validates_numericality_of :reference_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :type_label
  validates_length_of :type_label, :allow_nil => false, :maximum => 40
  validates_presence_of :abbreviation
  validates_length_of :abbreviation, :allow_nil => false, :maximum => 40
  validates_numericality_of :default_reference_code, :allow_nil => true, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
