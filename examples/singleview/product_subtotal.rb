class ProductSubtotal < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :subtotal, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :subtotal_id
  validates_numericality_of :subtotal_id, :allow_nil => false, :only_integer => true
  validates_presence_of :default_invoice_txt
  validates_length_of :default_invoice_txt, :allow_nil => false, :maximum => 255
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
end
