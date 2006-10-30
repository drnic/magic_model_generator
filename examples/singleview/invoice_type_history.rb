class InvoiceTypeHistory < ActiveRecord::Base
  belongs_to :invoice_type, :class_name => 'InvoiceType', :foreign_key => :invoice_type_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :expression_list, :class_name => 'ExpressionList', :foreign_key => :expression_list_id
  validates_presence_of :invoice_type_id
  validates_numericality_of :invoice_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :invoice_type_name
  validates_length_of :invoice_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :expression_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :allocation_function_defn_id, :allow_nil => true, :only_integer => true
  validates_presence_of :csr_entity_validation_id
  validates_numericality_of :csr_entity_validation_id, :allow_nil => false, :only_integer => true
  validates_presence_of :admin_entity_validation_id
  validates_numericality_of :admin_entity_validation_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :invoice_entity_validation_id, :allow_nil => true, :only_integer => true
end
