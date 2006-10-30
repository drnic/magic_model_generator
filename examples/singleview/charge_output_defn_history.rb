class ChargeOutputDefnHistory < ActiveRecord::Base
  belongs_to :charge_output_defn, :class_name => 'ChargeOutputDefn', :foreign_key => :charge_output_defn_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :expression_list, :class_name => 'ExpressionList', :foreign_key => :expression_list_id
  validates_presence_of :charge_output_defn_id
  validates_numericality_of :charge_output_defn_id, :allow_nil => false, :only_integer => true
  validates_presence_of :charge_output_defn_name
  validates_length_of :charge_output_defn_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :view_name
  validates_length_of :view_name, :allow_nil => false, :maximum => 30
  validates_numericality_of :expression_list_id, :allow_nil => true, :only_integer => true
end
