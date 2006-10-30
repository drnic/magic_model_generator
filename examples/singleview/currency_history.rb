class CurrencyHistory < ActiveRecord::Base
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :currency_id
  validates_numericality_of :currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :currency_symbol
  validates_length_of :currency_symbol, :allow_nil => false, :maximum => 5
  validates_presence_of :currency_name
  validates_length_of :currency_name, :allow_nil => false, :maximum => 30
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :display_format
  validates_length_of :display_format, :allow_nil => false, :maximum => 80
  validates_presence_of :edit_format
  validates_length_of :edit_format, :allow_nil => false, :maximum => 80
  validates_presence_of :sqr_report_format
  validates_length_of :sqr_report_format, :allow_nil => false, :maximum => 80
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :convertible_ind_code
  validates_numericality_of :convertible_ind_code, :allow_nil => false, :only_integer => true
end
