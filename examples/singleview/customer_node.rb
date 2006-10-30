class CustomerNode < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  belongs_to :bill_run_operation, :class_name => 'BillRunOperation', :foreign_key => :bill_run_operation_id
  has_many :accounts, :class_name => 'Account', :foreign_key => :customer_node_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :customer_node_id
  has_many :contract_histories, :class_name => 'ContractHistory', :foreign_key => :customer_node_id
  has_many :customer_contacts, :class_name => 'CustomerContact', :foreign_key => :customer_node_id
  has_many :customer_nodes, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  has_many :customer_node_bill_runs, :class_name => 'CustomerNodeBillRun', :foreign_key => :customer_node_id
  has_many :customer_node_charge_cats, :class_name => 'CustomerNodeChargeCat', :foreign_key => :customer_node_id
  has_many :customer_node_corresponds, :class_name => 'CustomerNodeCorrespond', :foreign_key => :customer_node_id
  has_many :customer_node_das, :class_name => 'CustomerNodeDa', :foreign_key => :customer_node_id
  has_many :customer_node_da_arrays, :class_name => 'CustomerNodeDaArray', :foreign_key => :customer_node_id
  has_many :customer_node_histories, :class_name => 'CustomerNodeHistory', :foreign_key => :customer_node_id
  has_many :customer_node_inv_formats, :class_name => 'CustomerNodeInvFormat', :foreign_key => :customer_node_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :customer_node_id
  has_many :dunning_ts, :class_name => 'DunningT', :foreign_key => :customer_node_id
  has_many :entity_remaps, :class_name => 'EntityRemap', :foreign_key => :customer_node_id
  has_many :inv_report_accounts_ts, :class_name => 'InvReportAccountsT', :foreign_key => :customer_node_id
  has_many :invoices, :class_name => 'Invoice', :foreign_key => :customer_node_id
  has_many :invoice_message_histories, :class_name => 'InvoiceMessageHistory', :foreign_key => :customer_node_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :customer_node_id
  has_many :product_instance_histories, :class_name => 'ProductInstanceHistory', :foreign_key => :customer_node_id
  has_many :ragd_clec_ts, :class_name => 'RagdClecT', :foreign_key => :customer_node_id
  has_many :ragd_ts, :class_name => 'RagdT', :foreign_key => :customer_node_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :customer_node_id
  has_many :rpsi_ts, :class_name => 'RpsiT', :foreign_key => :customer_node_id
  has_many :service_bill_run_ts, :class_name => 'ServiceBillRunT', :foreign_key => :customer_node_id
  has_many :service_histories, :class_name => 'ServiceHistory', :foreign_key => :customer_node_id
  has_many :subtotal_rating_deltas, :class_name => 'SubtotalRatingDelta', :foreign_key => :customer_node_id
  has_many :subtotal_rating_values, :class_name => 'SubtotalRatingValue', :foreign_key => :customer_node_id
  has_many :subtotal_values, :class_name => 'SubtotalValue', :foreign_key => :customer_node_id
  has_many :t2_cc_provrequests, :class_name => 'T2CcProvrequests', :foreign_key => :customer_node_id
  has_many :t2_historytables, :class_name => 'T2Historytable', :foreign_key => :customer_node_id
  has_many :t2_inv_suppress_invoices, :class_name => 'T2InvSuppressInvoice', :foreign_key => :customer_node_id
  has_many :t2_pay_statements, :class_name => 'T2PayStatement', :foreign_key => :customer_node_id
  has_many :trt_clec_treatments, :class_name => 'TrtClecTreatment', :foreign_key => :customer_node_id
  has_many :xpsi_tax_errors, :class_name => 'XpsiTaxError', :foreign_key => :customer_node_id
  has_many :invoices, :through => accounts
  has_many :accounts, :through => accounts
  has_many :account_types, :through => accounts
  has_many :subtotals, :through => charges
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
  has_many :charges, :through => charges
  has_many :atlanta_groups, :through => contract_histories
  has_many :contract_types, :through => contract_histories
  has_many :atlanta_operators, :through => contract_histories
  has_many :contracts, :through => contract_histories
  has_many :people, :through => contract_histories
  has_many :people, :through => customer_contacts
  has_many :bill_runs, :through => customer_nodes
  has_many :bill_run_operations, :through => customer_nodes
  has_many :error_messages, :through => customer_node_bill_runs
  has_many :bill_run_operations, :through => customer_node_bill_runs
  has_many :charge_categories, :through => customer_node_charge_cats
  has_many :task_queues, :through => customer_node_corresponds
  has_many :derived_attributes, :through => customer_node_das
  has_many :derived_attributes, :through => customer_node_da_arrays
  has_many :atlanta_groups, :through => customer_node_histories
  has_many :currencies, :through => customer_node_histories
  has_many :atlanta_operators, :through => customer_node_histories
  has_many :customer_node_types, :through => customer_node_histories
  has_many :schedules, :through => customer_node_histories
  has_many :gl_codes, :through => customer_node_histories
  has_many :people, :through => customer_node_histories
  has_many :accounts, :through => customer_node_inv_formats
  has_many :invoice_formats, :through => customer_node_inv_formats
  has_many :people, :through => customer_node_inv_formats
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :invoices, :through => dunning_ts
  has_many :error_messages, :through => entity_remaps
  has_many :task_queues, :through => entity_remaps
  has_many :accounts, :through => inv_report_accounts_ts
  has_many :bill_runs, :through => inv_report_accounts_ts
  has_many :accounts, :through => invoices
  has_many :invoices, :through => invoices
  has_many :bill_runs, :through => invoices
  has_many :invoice_types, :through => invoices
  has_many :atlanta_groups, :through => invoice_message_histories
  has_many :task_queues, :through => invoice_message_histories
  has_many :atlanta_operators, :through => invoice_message_histories
  has_many :invoice_formats, :through => invoice_message_histories
  has_many :account_types, :through => invoice_message_histories
  has_many :schedules, :through => invoice_message_histories
  has_many :invoice_messages, :through => invoice_message_histories
  has_many :payment_types, :through => payments
  has_many :currencies, :through => payments
  has_many :invoices, :through => payments
  has_many :atlanta_operators, :through => payments
  has_many :payment_batches, :through => payments
  has_many :people, :through => payments
  has_many :payments, :through => payments
  has_many :atlanta_operators, :through => product_instance_histories
  has_many :products, :through => product_instance_histories
  has_many :contracts, :through => product_instance_histories
  has_many :product_instances, :through => product_instance_histories
  has_many :task_queues, :through => ragd_clec_ts
  has_many :task_queues, :through => ragd_ts
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  has_many :task_queues, :through => rpsi_ts
  has_many :equipment, :through => rpsi_ts
  has_many :services, :through => rpsi_ts
  has_many :product_instances, :through => rpsi_ts
  has_many :services, :through => service_bill_run_ts
  has_many :bill_run_operations, :through => service_bill_run_ts
  has_many :atlanta_operators, :through => service_histories
  has_many :service_types, :through => service_histories
  has_many :services, :through => service_histories
  has_many :gl_codes, :through => service_histories
  has_many :contracts, :through => service_histories
  has_many :people, :through => service_histories
  has_many :subtotals, :through => subtotal_rating_deltas
  has_many :normalised_event_files, :through => subtotal_rating_deltas
  has_many :services, :through => subtotal_rating_deltas
  has_many :normalised_events, :through => subtotal_rating_deltas
  has_many :subtotals, :through => subtotal_rating_values
  has_many :normalised_event_files, :through => subtotal_rating_values
  has_many :services, :through => subtotal_rating_values
  has_many :subtotals, :through => subtotal_values
  has_many :invoices, :through => subtotal_values
  has_many :services, :through => subtotal_values
  has_many :products, :through => t2_cc_provrequests
  has_many :bill_runs, :through => t2_inv_suppress_invoices
  has_many :customer_queries, :through => t2_pay_statements
  has_many :task_queues, :through => t2_pay_statements
  has_many :t2_pay_statements, :through => t2_pay_statements
  has_many :payments, :through => t2_pay_statements
  has_many :invoices, :through => trt_clec_treatments
  has_many :xpsi_tax_errors, :through => xpsi_tax_errors
  has_many :adjustments, :through => xpsi_tax_errors
  has_many :error_messages, :through => xpsi_tax_errors
  has_many :services, :through => xpsi_tax_errors
  has_many :normalised_events, :through => xpsi_tax_errors
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :bill_run_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :bill_run_operation_id, :allow_nil => true, :only_integer => true
  validates_length_of :process_identifier, :allow_nil => true, :maximum => 80
end
