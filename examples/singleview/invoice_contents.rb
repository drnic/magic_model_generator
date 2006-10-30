class InvoiceContents < ActiveRecord::Base
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  validates_presence_of :invoice_id
  validates_numericality_of :invoice_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :stored_image_type_code
  validates_numericality_of :stored_image_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :printed_ind_code
  validates_numericality_of :printed_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :reprint_ind_code
  validates_numericality_of :reprint_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :invoice_contents
end
