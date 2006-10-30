class AttributeType < ActiveRecord::Base
  belongs_to :attribute_type, :class_name => 'AttributeType', :foreign_key => :attribute_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_help_entry, :class_name => 'AtlantaHelpEntry', :foreign_key => :atlanta_help_entry_id
  belongs_to :reference_type, :class_name => 'ReferenceType', :foreign_key => :reference_type_id
  has_many :attribute_types, :class_name => 'AttributeType', :foreign_key => :attribute_type_id
  has_many :attribute_type_variables, :class_name => 'AttributeTypeVariable', :foreign_key => :attribute_type_id
  has_many :configuration_attr_types, :class_name => 'ConfigurationAttrType', :foreign_key => :attribute_type_id
  has_many :entity_validation_lists, :class_name => 'EntityValidationList', :foreign_key => :attribute_type_id
  has_many :evs_attribute_type_keys, :class_name => 'EvsAttributeTypeKey', :foreign_key => :attribute_type_id
  has_many :tariff_charge_defns, :class_name => 'TariffChargeDefn', :foreign_key => :attribute_type_id
  has_many :tariff_condition_defns, :class_name => 'TariffConditionDefn', :foreign_key => :attribute_type_id
  has_many :atlanta_groups, :through => attribute_types
  has_many :reference_types, :through => attribute_types
  has_many :atlanta_operators, :through => attribute_types
  has_many :atlanta_help_entries, :through => attribute_types
  has_many :variable_defns, :through => attribute_type_variables
  has_many :configuration_attr_types, :through => configuration_attr_types
  has_many :configuration_item_types, :through => configuration_attr_types
  has_many :entity_validations, :through => entity_validation_lists
  has_many :tariffs, :through => tariff_charge_defns
  has_many :tariffs, :through => tariff_condition_defns
  validates_presence_of :attribute_type_id
  validates_numericality_of :attribute_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :attribute_type_name
  validates_length_of :attribute_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :label
  validates_length_of :label, :allow_nil => false, :maximum => 80
  validates_length_of :hint_text, :allow_nil => true, :maximum => 255
  validates_numericality_of :atlanta_help_entry_id, :allow_nil => true, :only_integer => true
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :case_type_code, :allow_nil => true, :only_integer => true
  validates_presence_of :mandatory_ind_code
  validates_numericality_of :mandatory_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :visible_ind_code
  validates_numericality_of :visible_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :visible_form_security_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :visible_group_security_code, :allow_nil => true, :only_integer => true
  validates_presence_of :enabled_ind_code
  validates_numericality_of :enabled_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :enabled_form_security_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :enabled_group_security_code, :allow_nil => true, :only_integer => true
  validates_presence_of :update_ind_code
  validates_numericality_of :update_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :update_form_security_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :update_group_security_code, :allow_nil => true, :only_integer => true
  validates_presence_of :alignment_code
  validates_numericality_of :alignment_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :max_length, :allow_nil => true, :only_integer => true
  validates_numericality_of :min_value, :allow_nil => true
  validates_numericality_of :max_value, :allow_nil => true
  validates_numericality_of :default_value_expr_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :default_value, :allow_nil => true, :maximum => 255
  validates_numericality_of :display_width, :allow_nil => true, :only_integer => true
  validates_length_of :display_format, :allow_nil => true, :maximum => 80
  validates_length_of :edit_format, :allow_nil => true, :maximum => 80
  validates_length_of :edit_mask, :allow_nil => true, :maximum => 80
  validates_numericality_of :original_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :reference_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :denormalised_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :editable_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :field_validation_expr_list_id, :allow_nil => true, :only_integer => true
  validates_length_of :sql_txt, :allow_nil => true, :maximum => 2000
  validates_length_of :combo_expr, :allow_nil => true, :maximum => 2000
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
