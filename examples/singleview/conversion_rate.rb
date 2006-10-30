class ConversionRate < ActiveRecord::Base
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  validates_presence_of :from_currency_id
  validates_numericality_of :from_currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :to_currency_id
  validates_numericality_of :to_currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :rate
  validates_numericality_of :rate, :allow_nil => false
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
end
