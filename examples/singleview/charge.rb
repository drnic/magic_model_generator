class Charge < ActiveRecord::Base
  belongs_to :charge, :class_name => 'Charge', :foreign_key => :charge_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  belongs_to :normalised_event, :class_name => 'NormalisedEvent', :foreign_key => :normalised_event_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  belongs_to :subtotal, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  belongs_to :adjustment, :class_name => 'Adjustment', :foreign_key => :adjustment_id
  belongs_to :payment, :class_name => 'Payment', :foreign_key => :payment_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :charge_id
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  validates_presence_of :charge_id
  validates_numericality_of :charge_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_numericality_of :charge, :allow_nil => true
  validates_numericality_of :proportion, :allow_nil => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :uninvoiced_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :from_gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :receivable_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :normalised_event_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :customer_node_id, :allow_nil => true, :only_integer => true
  validates_presence_of :charge_date
  validates_numericality_of :tariff_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :subtotal_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :adjustment_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :payment_id, :allow_nil => true, :only_integer => true
  validates_length_of :invoice_txt, :allow_nil => true, :maximum => 255
  validates_numericality_of :from_invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_section_nr, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_item_nr, :allow_nil => true, :only_integer => true
  validates_length_of :key_value, :allow_nil => true, :maximum => 255
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
  validates_presence_of :partition_nr
  validates_numericality_of :partition_nr, :allow_nil => false, :only_integer => true
  validates_numericality_of :normalised_event_partition_nr, :allow_nil => true, :only_integer => true
end
