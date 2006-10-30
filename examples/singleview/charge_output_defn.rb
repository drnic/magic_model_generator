class ChargeOutputDefn < ActiveRecord::Base
  belongs_to :charge_output_defn, :class_name => 'ChargeOutputDefn', :foreign_key => :charge_output_defn_id
  has_many :charge_output_defns, :class_name => 'ChargeOutputDefn', :foreign_key => :charge_output_defn_id
  has_many :charge_output_defn_histories, :class_name => 'ChargeOutputDefnHistory', :foreign_key => :charge_output_defn_id
  has_many :charge_output_defn_vars, :class_name => 'ChargeOutputDefnVar', :foreign_key => :charge_output_defn_id
  has_many :atlanta_groups, :through => charge_output_defn_histories
  has_many :atlanta_operators, :through => charge_output_defn_histories
  has_many :expression_lists, :through => charge_output_defn_histories
  has_many :variable_defns, :through => charge_output_defn_vars
  validates_presence_of :charge_output_defn_id
  validates_numericality_of :charge_output_defn_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
