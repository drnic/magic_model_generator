class AdjustmentType < ActiveRecord::Base
  belongs_to :adjustment_type, :class_name => 'AdjustmentType', :foreign_key => :adjustment_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  has_many :adjustments, :class_name => 'Adjustment', :foreign_key => :adjustment_type_id
  has_many :adjustment_batches, :class_name => 'AdjustmentBatch', :foreign_key => :adjustment_type_id
  has_many :adjustment_types, :class_name => 'AdjustmentType', :foreign_key => :adjustment_type_id
  has_many :adjustment_type_variables, :class_name => 'AdjustmentTypeVariable', :foreign_key => :adjustment_type_id
  has_many :customer_queries, :through => adjustments
  has_many :currencies, :through => adjustments
  has_many :invoices, :through => adjustments
  has_many :adjustments, :through => adjustments
  has_many :atlanta_operators, :through => adjustments
  has_many :adjustment_batches, :through => adjustments
  has_many :currencies, :through => adjustment_batches
  has_many :atlanta_operators, :through => adjustment_batches
  has_many :adjustment_batches, :through => adjustment_batches
  has_many :atlanta_groups, :through => adjustment_types
  has_many :currencies, :through => adjustment_types
  has_many :atlanta_operators, :through => adjustment_types
  has_many :entity_validations, :through => adjustment_types
  has_many :variable_defns, :through => adjustment_type_variables
  validates_presence_of :adjustment_type_id
  validates_numericality_of :adjustment_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :adjustment_type_name
  validates_length_of :adjustment_type_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :default_adjustment_text
  validates_length_of :default_adjustment_text, :allow_nil => false, :maximum => 80
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :adjustment_format_expr
  validates_length_of :adjustment_format_expr, :allow_nil => false, :maximum => 255
  validates_presence_of :adjustment_batch_format_expr
  validates_length_of :adjustment_batch_format_expr, :allow_nil => false, :maximum => 255
  validates_numericality_of :allocation_function_defn_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :adjust_function_defn_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
