class EntityValidation < ActiveRecord::Base
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :address_formats, :class_name => 'AddressFormat', :foreign_key => :entity_validation_id
  has_many :adjustment_types, :class_name => 'AdjustmentType', :foreign_key => :entity_validation_id
  has_many :contract_types, :class_name => 'ContractType', :foreign_key => :entity_validation_id
  has_many :derived_attribute_histories, :class_name => 'DerivedAttributeHistory', :foreign_key => :entity_validation_id
  has_many :entity_validations, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  has_many :entity_validation_lists, :class_name => 'EntityValidationList', :foreign_key => :entity_validation_id
  has_many :entity_validation_variables, :class_name => 'EntityValidationVariable', :foreign_key => :entity_validation_id
  has_many :invoice_format_histories, :class_name => 'InvoiceFormatHistory', :foreign_key => :entity_validation_id
  has_many :payment_types, :class_name => 'PaymentType', :foreign_key => :entity_validation_id
  has_many :person_types, :class_name => 'PersonType', :foreign_key => :entity_validation_id
  has_many :schedule_task_types, :class_name => 'ScheduleTaskType', :foreign_key => :entity_validation_id
  has_many :t2_ev_column_label_mappings, :class_name => 'T2EvColumnLabelMapping', :foreign_key => :entity_validation_id
  has_many :atlanta_groups, :through => address_formats
  has_many :address_formats, :through => address_formats
  has_many :atlanta_operators, :through => address_formats
  has_many :atlanta_groups, :through => adjustment_types
  has_many :currencies, :through => adjustment_types
  has_many :atlanta_operators, :through => adjustment_types
  has_many :adjustment_types, :through => adjustment_types
  has_many :atlanta_groups, :through => contract_types
  has_many :icons, :through => contract_types
  has_many :contract_types, :through => contract_types
  has_many :atlanta_operators, :through => contract_types
  has_many :atlanta_groups, :through => derived_attribute_histories
  has_many :atlanta_operators, :through => derived_attribute_histories
  has_many :derived_attributes, :through => derived_attribute_histories
  has_many :atlanta_groups, :through => entity_validations
  has_many :atlanta_operators, :through => entity_validations
  has_many :attribute_types, :through => entity_validation_lists
  has_many :variable_defns, :through => entity_validation_variables
  has_many :atlanta_groups, :through => invoice_format_histories
  has_many :atlanta_operators, :through => invoice_format_histories
  has_many :templates, :through => invoice_format_histories
  has_many :invoice_formats, :through => invoice_format_histories
  has_many :atlanta_groups, :through => payment_types
  has_many :payment_types, :through => payment_types
  has_many :currencies, :through => payment_types
  has_many :atlanta_operators, :through => payment_types
  has_many :atlanta_groups, :through => person_types
  has_many :icons, :through => person_types
  has_many :address_formats, :through => person_types
  has_many :atlanta_operators, :through => person_types
  has_many :person_types, :through => person_types
  has_many :atlanta_groups, :through => schedule_task_types
  has_many :error_messages, :through => schedule_task_types
  has_many :atlanta_operators, :through => schedule_task_types
  has_many :schedule_task_types, :through => schedule_task_types
  validates_presence_of :entity_validation_id
  validates_numericality_of :entity_validation_id, :allow_nil => false, :only_integer => true
  validates_presence_of :entity_validation_name
  validates_length_of :entity_validation_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :validation_table_name
  validates_length_of :validation_table_name, :allow_nil => false, :maximum => 30
  validates_length_of :parent_table_name, :allow_nil => true, :maximum => 30
  validates_numericality_of :row_validation_expr_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :pre_commit_row_expr_list_id, :allow_nil => true, :only_integer => true
  validates_length_of :post_commit_expr, :allow_nil => true, :maximum => 2000
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
