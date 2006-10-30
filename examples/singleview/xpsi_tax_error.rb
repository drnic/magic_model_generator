class XpsiTaxError < ActiveRecord::Base
  belongs_to :xpsi_tax_error, :class_name => 'XpsiTaxError', :foreign_key => :xpsi_tax_error_id
  belongs_to :normalised_event, :class_name => 'NormalisedEvent', :foreign_key => :normalised_event_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  belongs_to :adjustment, :class_name => 'Adjustment', :foreign_key => :adjustment_id
  has_many :xpsi_tax_errors, :class_name => 'XpsiTaxError', :foreign_key => :xpsi_tax_error_id
  has_many :customer_nodes, :through => xpsi_tax_errors
  has_many :adjustments, :through => xpsi_tax_errors
  has_many :error_messages, :through => xpsi_tax_errors
  has_many :services, :through => xpsi_tax_errors
  has_many :normalised_events, :through => xpsi_tax_errors
  validates_presence_of :xpsi_tax_error_id
  validates_numericality_of :xpsi_tax_error_id, :allow_nil => false, :only_integer => true
  validates_presence_of :normalised_event_id
  validates_numericality_of :normalised_event_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :service_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :customer_node_id, :allow_nil => true, :only_integer => true
  validates_presence_of :tax_module_code
  validates_numericality_of :tax_module_code, :allow_nil => false, :only_integer => true
  validates_length_of :tax_module_return_value, :allow_nil => true, :maximum => 40
  validates_numericality_of :tax_type_code, :allow_nil => true, :only_integer => true
  validates_length_of :tax_key, :allow_nil => true, :maximum => 255
  validates_numericality_of :amount, :allow_nil => true
  validates_presence_of :adjust_ind
  validates_numericality_of :adjust_ind, :allow_nil => false, :only_integer => true
  validates_presence_of :error_message_id
  validates_numericality_of :error_message_id, :allow_nil => false, :only_integer => true
  validates_presence_of :error_message
  validates_length_of :error_message, :allow_nil => false, :maximum => 255
  validates_numericality_of :adjustment_id, :allow_nil => true, :only_integer => true
  validates_presence_of :error_date
end
