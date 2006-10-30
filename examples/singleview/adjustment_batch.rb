class AdjustmentBatch < ActiveRecord::Base
  belongs_to :adjustment_batch, :class_name => 'AdjustmentBatch', :foreign_key => :adjustment_batch_id
  belongs_to :adjustment_type, :class_name => 'AdjustmentType', :foreign_key => :adjustment_type_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  has_many :adjustments, :class_name => 'Adjustment', :foreign_key => :adjustment_batch_id
  has_many :adjustment_batches, :class_name => 'AdjustmentBatch', :foreign_key => :adjustment_batch_id
  has_many :customer_queries, :through => adjustments
  has_many :currencies, :through => adjustments
  has_many :invoices, :through => adjustments
  has_many :adjustments, :through => adjustments
  has_many :atlanta_operators, :through => adjustments
  has_many :adjustment_types, :through => adjustments
  has_many :currencies, :through => adjustment_batches
  has_many :atlanta_operators, :through => adjustment_batches
  has_many :adjustment_types, :through => adjustment_batches
  validates_presence_of :adjustment_batch_id
  validates_numericality_of :adjustment_batch_id, :allow_nil => false, :only_integer => true
  validates_presence_of :adjustment_batch_nr
  validates_length_of :adjustment_batch_nr, :allow_nil => false, :maximum => 30
  validates_presence_of :adjustment_type_id
  validates_numericality_of :adjustment_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_presence_of :total_amount_currency_id
  validates_numericality_of :total_amount_currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :batch_type_code
  validates_numericality_of :batch_type_code, :allow_nil => false, :only_integer => true
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
