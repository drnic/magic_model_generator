class InvoiceMessage < ActiveRecord::Base
  belongs_to :invoice_message, :class_name => 'InvoiceMessage', :foreign_key => :invoice_message_id
  has_many :invoice_messages, :class_name => 'InvoiceMessage', :foreign_key => :invoice_message_id
  has_many :invoice_message_histories, :class_name => 'InvoiceMessageHistory', :foreign_key => :invoice_message_id
  has_many :invoice_message_variables, :class_name => 'InvoiceMessageVariable', :foreign_key => :invoice_message_id
  has_many :atlanta_groups, :through => invoice_message_histories
  has_many :customer_nodes, :through => invoice_message_histories
  has_many :task_queues, :through => invoice_message_histories
  has_many :atlanta_operators, :through => invoice_message_histories
  has_many :invoice_formats, :through => invoice_message_histories
  has_many :account_types, :through => invoice_message_histories
  has_many :schedules, :through => invoice_message_histories
  has_many :variable_defns, :through => invoice_message_variables
  validates_presence_of :invoice_message_id
  validates_numericality_of :invoice_message_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
