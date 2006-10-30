class AccountHistory < ActiveRecord::Base
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :payment, :class_name => 'Payment', :foreign_key => :payment_id
  belongs_to :adjustment, :class_name => 'Adjustment', :foreign_key => :adjustment_id
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :previous_balance
  validates_numericality_of :previous_balance, :allow_nil => false
  validates_presence_of :current_balance
  validates_numericality_of :current_balance, :allow_nil => false
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :payment_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :adjustment_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :gl_uploaded_ind_code, :allow_nil => true, :only_integer => true
end
