class TemplateHistory < ActiveRecord::Base
  belongs_to :template, :class_name => 'Template', :foreign_key => :template_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  validates_presence_of :template_id
  validates_numericality_of :template_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :template_name
  validates_length_of :template_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :template_status_code
  validates_numericality_of :template_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :template_type_code
  validates_numericality_of :template_type_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :template_context_code, :allow_nil => true, :only_integer => true
  validates_presence_of :view_name
  validates_length_of :view_name, :allow_nil => false, :maximum => 30
  validates_length_of :where_clause, :allow_nil => true, :maximum => 2000
  validates_length_of :order_by_clause, :allow_nil => true, :maximum => 255
  validates_numericality_of :eligibility_expr_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :post_eligibility_expr_list_id, :allow_nil => true, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :template
end
