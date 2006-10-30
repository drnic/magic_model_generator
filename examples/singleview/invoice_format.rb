class InvoiceFormat < ActiveRecord::Base
  belongs_to :invoice_format, :class_name => 'InvoiceFormat', :foreign_key => :invoice_format_id
  has_many :customer_node_inv_formats, :class_name => 'CustomerNodeInvFormat', :foreign_key => :invoice_format_id
  has_many :customer_node_types, :class_name => 'CustomerNodeType', :foreign_key => :invoice_format_id
  has_many :invoice_formats, :class_name => 'InvoiceFormat', :foreign_key => :invoice_format_id
  has_many :invoice_format_histories, :class_name => 'InvoiceFormatHistory', :foreign_key => :invoice_format_id
  has_many :invoice_message_histories, :class_name => 'InvoiceMessageHistory', :foreign_key => :invoice_format_id
  has_many :customer_nodes, :through => customer_node_inv_formats
  has_many :accounts, :through => customer_node_inv_formats
  has_many :people, :through => customer_node_inv_formats
  has_many :atlanta_groups, :through => customer_node_types
  has_many :icons, :through => customer_node_types
  has_many :address_formats, :through => customer_node_types
  has_many :atlanta_operators, :through => customer_node_types
  has_many :customer_node_types, :through => customer_node_types
  has_many :gl_codes, :through => customer_node_types
  has_many :atlanta_groups, :through => invoice_format_histories
  has_many :atlanta_operators, :through => invoice_format_histories
  has_many :templates, :through => invoice_format_histories
  has_many :entity_validations, :through => invoice_format_histories
  has_many :atlanta_groups, :through => invoice_message_histories
  has_many :customer_nodes, :through => invoice_message_histories
  has_many :task_queues, :through => invoice_message_histories
  has_many :atlanta_operators, :through => invoice_message_histories
  has_many :account_types, :through => invoice_message_histories
  has_many :schedules, :through => invoice_message_histories
  has_many :invoice_messages, :through => invoice_message_histories
  validates_presence_of :invoice_format_id
  validates_numericality_of :invoice_format_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
