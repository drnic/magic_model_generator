class ExpressionList < ActiveRecord::Base
  belongs_to :expression_list, :class_name => 'ExpressionList', :foreign_key => :expression_list_id
  has_many :charge_output_defn_histories, :class_name => 'ChargeOutputDefnHistory', :foreign_key => :expression_list_id
  has_many :expression_lists, :class_name => 'ExpressionList', :foreign_key => :expression_list_id
  has_many :expression_list_values, :class_name => 'ExpressionListValue', :foreign_key => :expression_list_id
  has_many :invoice_type_histories, :class_name => 'InvoiceTypeHistory', :foreign_key => :expression_list_id
  has_many :normalised_event_ft_hists, :class_name => 'NormalisedEventFtHist', :foreign_key => :expression_list_id
  has_many :atlanta_groups, :through => charge_output_defn_histories
  has_many :atlanta_operators, :through => charge_output_defn_histories
  has_many :charge_output_defns, :through => charge_output_defn_histories
  has_many :error_messages, :through => expression_list_values
  has_many :expression_list_values, :through => expression_list_values
  has_many :atlanta_groups, :through => invoice_type_histories
  has_many :atlanta_operators, :through => invoice_type_histories
  has_many :invoice_types, :through => invoice_type_histories
  has_many :atlanta_groups, :through => normalised_event_ft_hists
  has_many :atlanta_operators, :through => normalised_event_ft_hists
  has_many :normalised_event_fts, :through => normalised_event_ft_hists
  has_many :dils, :through => normalised_event_ft_hists
  validates_presence_of :expression_list_id
  validates_numericality_of :expression_list_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
end
