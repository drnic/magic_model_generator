class DerivedAttributeHistory < ActiveRecord::Base
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
  validates_presence_of :derived_attribute_name
  validates_length_of :derived_attribute_name, :allow_nil => false, :maximum => 67
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :last_modified
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :application_env_code
  validates_numericality_of :application_env_code, :allow_nil => false, :only_integer => true
  validates_presence_of :context_code
  validates_numericality_of :context_code, :allow_nil => false, :only_integer => true
  validates_presence_of :evaluation_type_code
  validates_numericality_of :evaluation_type_code, :allow_nil => false, :only_integer => true
  validates_length_of :key_substitution_expr, :allow_nil => true, :maximum => 255
  validates_length_of :key_variable_name, :allow_nil => true, :maximum => 66
  validates_numericality_of :storage_context_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :master_derived_attribute_id, :allow_nil => true, :only_integer => true
  validates_length_of :table_name, :allow_nil => true, :maximum => 64
  validates_length_of :display_table_name, :allow_nil => true, :maximum => 64
  validates_length_of :table_name_description, :allow_nil => true, :maximum => 2000
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :search_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :result_seqnr, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_table_size, :allow_nil => true, :only_integer => true
  validates_numericality_of :value_attribute_type_id, :allow_nil => true, :only_integer => true
  validates_presence_of :default_value_expr
  validates_length_of :default_value_expr, :allow_nil => false, :maximum => 255
end
