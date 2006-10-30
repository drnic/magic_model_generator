class AccountTypeAging < ActiveRecord::Base
  belongs_to :account_type, :class_name => 'AccountType', :foreign_key => :account_type_id
  validates_presence_of :account_type_id
  validates_numericality_of :account_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :display_seqnr
  validates_numericality_of :display_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :evaluation_seqnr
  validates_numericality_of :evaluation_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :label
  validates_length_of :label, :allow_nil => false, :maximum => 40
  validates_numericality_of :foreground_colour, :allow_nil => true, :only_integer => true
  validates_numericality_of :background_colour, :allow_nil => true, :only_integer => true
  validates_presence_of :aged_classification_expr
  validates_length_of :aged_classification_expr, :allow_nil => false, :maximum => 255
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
