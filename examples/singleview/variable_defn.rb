class VariableDefn < ActiveRecord::Base
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  has_many :account_type_variables, :class_name => 'AccountTypeVariable', :foreign_key => :variable_defn_id
  has_many :adjustment_type_variables, :class_name => 'AdjustmentTypeVariable', :foreign_key => :variable_defn_id
  has_many :attribute_type_variables, :class_name => 'AttributeTypeVariable', :foreign_key => :variable_defn_id
  has_many :charge_output_defn_vars, :class_name => 'ChargeOutputDefnVar', :foreign_key => :variable_defn_id
  has_many :customer_node_type_vars, :class_name => 'CustomerNodeTypeVar', :foreign_key => :variable_defn_id
  has_many :customer_query_type_vars, :class_name => 'CustomerQueryTypeVar', :foreign_key => :variable_defn_id
  has_many :derived_attributes, :class_name => 'DerivedAttribute', :foreign_key => :variable_defn_id
  has_many :dil_variables, :class_name => 'DilVariable', :foreign_key => :variable_defn_id
  has_many :entity_validation_variables, :class_name => 'EntityValidationVariable', :foreign_key => :variable_defn_id
  has_many :equipment_type_variables, :class_name => 'EquipmentTypeVariable', :foreign_key => :variable_defn_id
  has_many :function_defns, :class_name => 'FunctionDefn', :foreign_key => :variable_defn_id
  has_many :invoice_message_variables, :class_name => 'InvoiceMessageVariable', :foreign_key => :variable_defn_id
  has_many :invoice_type_variables, :class_name => 'InvoiceTypeVariable', :foreign_key => :variable_defn_id
  has_many :normalised_event_ft_vars, :class_name => 'NormalisedEventFtVar', :foreign_key => :variable_defn_id
  has_many :payment_type_variables, :class_name => 'PaymentTypeVariable', :foreign_key => :variable_defn_id
  has_many :subtotals, :class_name => 'Subtotal', :foreign_key => :variable_defn_id
  has_many :tariffs, :class_name => 'Tariff', :foreign_key => :variable_defn_id
  has_many :template_variables, :class_name => 'TemplateVariable', :foreign_key => :variable_defn_id
  has_many :variable_defns, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  has_many :variable_defn_dependencies, :class_name => 'VariableDefnDependency', :foreign_key => :variable_defn_id
  has_many :variable_defn_directs, :class_name => 'VariableDefnDirect', :foreign_key => :variable_defn_id
  has_many :variable_defn_histories, :class_name => 'VariableDefnHistory', :foreign_key => :variable_defn_id
  has_many :account_types, :through => account_type_variables
  has_many :adjustment_types, :through => adjustment_type_variables
  has_many :attribute_types, :through => attribute_type_variables
  has_many :charge_output_defns, :through => charge_output_defn_vars
  has_many :customer_node_types, :through => customer_node_type_vars
  has_many :customer_query_types, :through => customer_query_type_vars
  has_many :derived_attributes, :through => derived_attributes
  has_many :dils, :through => dil_variables
  has_many :entity_validations, :through => entity_validation_variables
  has_many :equipment_types, :through => equipment_type_variables
  has_many :function_defns, :through => function_defns
  has_many :invoice_messages, :through => invoice_message_variables
  has_many :invoice_types, :through => invoice_type_variables
  has_many :normalised_event_fts, :through => normalised_event_ft_vars
  has_many :payment_types, :through => payment_type_variables
  has_many :subtotals, :through => subtotals
  has_many :tariffs, :through => tariffs
  has_many :templates, :through => template_variables
  has_many :atlanta_groups, :through => variable_defn_histories
  has_many :atlanta_operators, :through => variable_defn_histories
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
