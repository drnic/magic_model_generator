class InvoiceMessageVariable < ActiveRecord::Base
  belongs_to :invoice_message, :class_name => 'InvoiceMessage', :foreign_key => :invoice_message_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  validates_presence_of :invoice_message_id
  validates_numericality_of :invoice_message_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
end
