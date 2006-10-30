class T2InvRevokedInvoice < ActiveRecord::Base
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  validates_presence_of :invoice_nr
  validates_numericality_of :invoice_nr, :allow_nil => false, :only_integer => true
  validates_presence_of :bill_run_id
  validates_numericality_of :bill_run_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_date
  validates_presence_of :revoked_date
  validates_presence_of :invoice_sequence
  validates_length_of :invoice_sequence, :allow_nil => false, :maximum => 30
end
