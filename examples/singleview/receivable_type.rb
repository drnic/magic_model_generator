class ReceivableType < ActiveRecord::Base
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  has_many :adjustment_invoices, :class_name => 'AdjustmentInvoice', :foreign_key => :receivable_type_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :receivable_type_id
  has_many :invoice_receivable_types, :class_name => 'InvoiceReceivableType', :foreign_key => :receivable_type_id
  has_many :payment_invoices, :class_name => 'PaymentInvoice', :foreign_key => :receivable_type_id
  has_many :payment_items, :class_name => 'PaymentItem', :foreign_key => :receivable_type_id
  has_many :receivable_types, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  has_many :receivable_type_histories, :class_name => 'ReceivableTypeHistory', :foreign_key => :receivable_type_id
  has_many :subtotal_histories, :class_name => 'SubtotalHistory', :foreign_key => :receivable_type_id
  has_many :tariff_histories, :class_name => 'TariffHistory', :foreign_key => :receivable_type_id
  has_many :invoices, :through => adjustment_invoices
  has_many :accounts, :through => adjustment_invoices
  has_many :adjustments, :through => adjustment_invoices
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :invoices, :through => invoice_receivable_types
  has_many :invoices, :through => payment_invoices
  has_many :accounts, :through => payment_invoices
  has_many :payments, :through => payment_invoices
  has_many :payments, :through => payment_items
  has_many :atlanta_groups, :through => receivable_type_histories
  has_many :accounts, :through => receivable_type_histories
  has_many :atlanta_operators, :through => receivable_type_histories
  has_many :gl_codes, :through => receivable_type_histories
  has_many :atlanta_groups, :through => subtotal_histories
  has_many :subtotals, :through => subtotal_histories
  has_many :currencies, :through => subtotal_histories
  has_many :atlanta_operators, :through => subtotal_histories
  has_many :gl_codes, :through => subtotal_histories
  has_many :atlanta_groups, :through => tariff_histories
  has_many :currencies, :through => tariff_histories
  has_many :atlanta_operators, :through => tariff_histories
  has_many :tariffs, :through => tariff_histories
  has_many :charge_categories, :through => tariff_histories
  validates_presence_of :receivable_type_id
  validates_numericality_of :receivable_type_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
