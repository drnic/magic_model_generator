class PaymentTypeVariable < ActiveRecord::Base
  belongs_to :payment_type, :class_name => 'PaymentType', :foreign_key => :payment_type_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  validates_presence_of :payment_type_id
  validates_numericality_of :payment_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
end
