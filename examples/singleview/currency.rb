class Currency < ActiveRecord::Base
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  has_many :account_types, :class_name => 'AccountType', :foreign_key => :currency_id
  has_many :adjustments, :class_name => 'Adjustment', :foreign_key => :currency_id
  has_many :adjustment_batches, :class_name => 'AdjustmentBatch', :foreign_key => :currency_id
  has_many :adjustment_types, :class_name => 'AdjustmentType', :foreign_key => :currency_id
  has_many :bill_run_types, :class_name => 'BillRunType', :foreign_key => :currency_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :currency_id
  has_many :currencies, :class_name => 'Currency', :foreign_key => :currency_id
  has_many :currency_histories, :class_name => 'CurrencyHistory', :foreign_key => :currency_id
  has_many :customer_node_histories, :class_name => 'CustomerNodeHistory', :foreign_key => :currency_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :currency_id
  has_many :normalised_events, :class_name => 'NormalisedEvent', :foreign_key => :currency_id
  has_many :normalised_event_errors, :class_name => 'NormalisedEventError', :foreign_key => :currency_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :currency_id
  has_many :payment_batches, :class_name => 'PaymentBatch', :foreign_key => :currency_id
  has_many :payment_types, :class_name => 'PaymentType', :foreign_key => :currency_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :currency_id
  has_many :subtotal_histories, :class_name => 'SubtotalHistory', :foreign_key => :currency_id
  has_many :tariff_histories, :class_name => 'TariffHistory', :foreign_key => :currency_id
  has_many :atlanta_groups, :through => account_types
  has_many :atlanta_operators, :through => account_types
  has_many :invoice_types, :through => account_types
  has_many :account_types, :through => account_types
  has_many :customer_queries, :through => adjustments
  has_many :invoices, :through => adjustments
  has_many :adjustments, :through => adjustments
  has_many :atlanta_operators, :through => adjustments
  has_many :adjustment_types, :through => adjustments
  has_many :adjustment_batches, :through => adjustments
  has_many :atlanta_operators, :through => adjustment_batches
  has_many :adjustment_types, :through => adjustment_batches
  has_many :adjustment_batches, :through => adjustment_batches
  has_many :atlanta_groups, :through => adjustment_types
  has_many :atlanta_operators, :through => adjustment_types
  has_many :adjustment_types, :through => adjustment_types
  has_many :entity_validations, :through => adjustment_types
  has_many :atlanta_groups, :through => bill_run_types
  has_many :bill_run_types, :through => bill_run_types
  has_many :atlanta_operators, :through => bill_run_types
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :atlanta_groups, :through => currency_histories
  has_many :atlanta_operators, :through => currency_histories
  has_many :atlanta_groups, :through => customer_node_histories
  has_many :customer_nodes, :through => customer_node_histories
  has_many :atlanta_operators, :through => customer_node_histories
  has_many :customer_node_types, :through => customer_node_histories
  has_many :schedules, :through => customer_node_histories
  has_many :gl_codes, :through => customer_node_histories
  has_many :people, :through => customer_node_histories
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :normalised_event_types, :through => normalised_events
  has_many :normalised_event_files, :through => normalised_events
  has_many :bill_runs, :through => normalised_events
  has_many :normalised_events, :through => normalised_events
  has_many :normalised_event_types, :through => normalised_event_errors
  has_many :error_messages, :through => normalised_event_errors
  has_many :normalised_event_files, :through => normalised_event_errors
  has_many :reprocessed_files, :through => normalised_event_errors
  has_many :bill_runs, :through => normalised_event_errors
  has_many :normalised_events, :through => normalised_event_errors
  has_many :payment_types, :through => payments
  has_many :customer_nodes, :through => payments
  has_many :invoices, :through => payments
  has_many :atlanta_operators, :through => payments
  has_many :payment_batches, :through => payments
  has_many :people, :through => payments
  has_many :payments, :through => payments
  has_many :payment_types, :through => payment_batches
  has_many :atlanta_operators, :through => payment_batches
  has_many :payment_batches, :through => payment_batches
  has_many :atlanta_groups, :through => payment_types
  has_many :payment_types, :through => payment_types
  has_many :atlanta_operators, :through => payment_types
  has_many :entity_validations, :through => payment_types
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  has_many :atlanta_groups, :through => subtotal_histories
  has_many :subtotals, :through => subtotal_histories
  has_many :atlanta_operators, :through => subtotal_histories
  has_many :receivable_types, :through => subtotal_histories
  has_many :gl_codes, :through => subtotal_histories
  has_many :atlanta_groups, :through => tariff_histories
  has_many :atlanta_operators, :through => tariff_histories
  has_many :tariffs, :through => tariff_histories
  has_many :charge_categories, :through => tariff_histories
  has_many :receivable_types, :through => tariff_histories
  validates_presence_of :currency_id
  validates_numericality_of :currency_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
