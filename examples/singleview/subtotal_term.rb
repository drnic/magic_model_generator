class SubtotalTerm < ActiveRecord::Base
  belongs_to :subtotal, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  validates_presence_of :subtotal_id
  validates_numericality_of :subtotal_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :context_code
  validates_numericality_of :context_code, :allow_nil => false, :only_integer => true
  validates_presence_of :subtotal_term_expr
  validates_length_of :subtotal_term_expr, :allow_nil => false, :maximum => 255
  validates_length_of :key_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :eligibility_expression_list_id, :allow_nil => true, :only_integer => true
end
