class TariffCharge < ActiveRecord::Base
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  validates_presence_of :tariff_id
  validates_numericality_of :tariff_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :condition1_expr
  validates_length_of :condition1_expr, :allow_nil => false, :maximum => 255
  validates_length_of :condition2_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition3_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition4_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition5_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition6_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition7_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition8_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition9_expr, :allow_nil => true, :maximum => 255
  validates_length_of :condition10_expr, :allow_nil => true, :maximum => 255
  validates_presence_of :charge1_expr
  validates_length_of :charge1_expr, :allow_nil => false, :maximum => 255
  validates_length_of :charge2_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge3_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge4_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge5_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge6_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge7_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge8_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge9_expr, :allow_nil => true, :maximum => 255
  validates_length_of :charge10_expr, :allow_nil => true, :maximum => 255
  validates_length_of :invoice_txt, :allow_nil => true, :maximum => 255
end
