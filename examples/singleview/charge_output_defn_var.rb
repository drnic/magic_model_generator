class ChargeOutputDefnVar < ActiveRecord::Base
  belongs_to :charge_output_defn, :class_name => 'ChargeOutputDefn', :foreign_key => :charge_output_defn_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  validates_presence_of :charge_output_defn_id
  validates_numericality_of :charge_output_defn_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
end
