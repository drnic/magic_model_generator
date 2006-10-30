class InvoiceMessageHistory < ActiveRecord::Base
  belongs_to :invoice_message, :class_name => 'InvoiceMessage', :foreign_key => :invoice_message_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :invoice_format, :class_name => 'InvoiceFormat', :foreign_key => :invoice_format_id
  belongs_to :schedule, :class_name => 'Schedule', :foreign_key => :schedule_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :account_type, :class_name => 'AccountType', :foreign_key => :account_type_id
  validates_presence_of :invoice_message_id
  validates_numericality_of :invoice_message_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :invoice_message_name
  validates_length_of :invoice_message_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :invoice_message_text
  validates_length_of :invoice_message_text, :allow_nil => false, :maximum => 2000
  validates_numericality_of :invoice_format_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :schedule_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :customer_node_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :qualification_expr_list_id, :allow_nil => true, :only_integer => true
end
