class ProductPaymentItem < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :label_expr
  validates_length_of :label_expr, :allow_nil => false, :maximum => 255
  validates_length_of :receivable_type_expr, :allow_nil => true, :maximum => 255
  validates_presence_of :amount_expr
  validates_length_of :amount_expr, :allow_nil => false, :maximum => 255
  validates_presence_of :suppress_zero_ind_code
  validates_numericality_of :suppress_zero_ind_code, :allow_nil => false, :only_integer => true
end
