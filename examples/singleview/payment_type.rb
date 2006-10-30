class PaymentType < ActiveRecord::Base
  belongs_to :payment_type, :class_name => 'PaymentType', :foreign_key => :payment_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :payment_type_id
  has_many :payment_batches, :class_name => 'PaymentBatch', :foreign_key => :payment_type_id
  has_many :payment_types, :class_name => 'PaymentType', :foreign_key => :payment_type_id
  has_many :payment_type_variables, :class_name => 'PaymentTypeVariable', :foreign_key => :payment_type_id
  has_many :customer_nodes, :through => payments
  has_many :currencies, :through => payments
  has_many :invoices, :through => payments
  has_many :atlanta_operators, :through => payments
  has_many :payment_batches, :through => payments
  has_many :people, :through => payments
  has_many :payments, :through => payments
  has_many :currencies, :through => payment_batches
  has_many :atlanta_operators, :through => payment_batches
  has_many :payment_batches, :through => payment_batches
  has_many :atlanta_groups, :through => payment_types
  has_many :currencies, :through => payment_types
  has_many :atlanta_operators, :through => payment_types
  has_many :entity_validations, :through => payment_types
  has_many :variable_defns, :through => payment_type_variables
  validates_presence_of :payment_type_id
  validates_numericality_of :payment_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :payment_type_name
  validates_length_of :payment_type_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :payment_rejected_code
  validates_numericality_of :payment_rejected_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :from_rejected_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_rejected_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :to_adjust_gl_code_id, :allow_nil => true, :only_integer => true
  validates_presence_of :receipt_format_expr
  validates_length_of :receipt_format_expr, :allow_nil => false, :maximum => 255
  validates_presence_of :payment_batch_format_expr
  validates_length_of :payment_batch_format_expr, :allow_nil => false, :maximum => 255
  validates_numericality_of :allocation_function_defn_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :adjust_function_defn_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
