class AccountReservation < ActiveRecord::Base
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  validates_presence_of :reservation
  validates_length_of :reservation, :allow_nil => false, :maximum => 40
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :reserved_amount
  validates_numericality_of :reserved_amount, :allow_nil => false
  validates_numericality_of :reserved_amount_currency_id, :allow_nil => true, :only_integer => true
  validates_presence_of :account_reserved_amount
  validates_numericality_of :account_reserved_amount, :allow_nil => false
  validates_presence_of :creation_date
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
end
