class PaymentBatch < ActiveRecord::Base
  belongs_to :payment_batch, :class_name => 'PaymentBatch', :foreign_key => :payment_batch_id
  belongs_to :payment_type, :class_name => 'PaymentType', :foreign_key => :payment_type_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :payment_batch_id
  has_many :payment_batches, :class_name => 'PaymentBatch', :foreign_key => :payment_batch_id
  has_many :payment_types, :through => payments
  has_many :customer_nodes, :through => payments
  has_many :currencies, :through => payments
  has_many :invoices, :through => payments
  has_many :atlanta_operators, :through => payments
  has_many :people, :through => payments
  has_many :payments, :through => payments
  has_many :payment_types, :through => payment_batches
  has_many :currencies, :through => payment_batches
  has_many :atlanta_operators, :through => payment_batches
  validates_presence_of :payment_batch_id
  validates_numericality_of :payment_batch_id, :allow_nil => false, :only_integer => true
  validates_presence_of :payment_batch_nr
  validates_length_of :payment_batch_nr, :allow_nil => false, :maximum => 30
  validates_presence_of :payment_type_id
  validates_numericality_of :payment_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_presence_of :total_amount_currency_id
  validates_numericality_of :total_amount_currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :batch_type_code
  validates_numericality_of :batch_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :batch_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :batch_status_code
  validates_numericality_of :batch_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :total_amount
  validates_numericality_of :total_amount, :allow_nil => false
  validates_presence_of :entered_count
  validates_numericality_of :entered_count, :allow_nil => false, :only_integer => true
  validates_presence_of :applied_count
  validates_numericality_of :applied_count, :allow_nil => false, :only_integer => true
end
