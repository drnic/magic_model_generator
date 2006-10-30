class CustomerNodeInvFormat < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :invoice_format, :class_name => 'InvoiceFormat', :foreign_key => :invoice_format_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :invoice_format_id
  validates_numericality_of :invoice_format_id, :allow_nil => false, :only_integer => true
  validates_presence_of :person_id
  validates_numericality_of :person_id, :allow_nil => false, :only_integer => true
  validates_presence_of :address_choice_code
  validates_numericality_of :address_choice_code, :allow_nil => false, :only_integer => true
  validates_presence_of :address_id
  validates_numericality_of :address_id, :allow_nil => false, :only_integer => true
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
