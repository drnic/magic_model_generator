class Service < ActiveRecord::Base
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :service_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :service_id
  has_many :evt_equipment_changeovers, :class_name => 'EvtEquipmentChangeover', :foreign_key => :service_id
  has_many :product_instance_services, :class_name => 'ProductInstanceService', :foreign_key => :service_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :service_id
  has_many :rpsi_ts, :class_name => 'RpsiT', :foreign_key => :service_id
  has_many :rshu_cmn_ts, :class_name => 'RshuCmnT', :foreign_key => :service_id
  has_many :services, :class_name => 'Service', :foreign_key => :service_id
  has_many :service_bill_run_ts, :class_name => 'ServiceBillRunT', :foreign_key => :service_id
  has_many :service_charge_categories, :class_name => 'ServiceChargeCategory', :foreign_key => :service_id
  has_many :service_das, :class_name => 'ServiceDa', :foreign_key => :service_id
  has_many :service_da_arrays, :class_name => 'ServiceDaArray', :foreign_key => :service_id
  has_many :service_histories, :class_name => 'ServiceHistory', :foreign_key => :service_id
  has_many :subtotal_rating_deltas, :class_name => 'SubtotalRatingDelta', :foreign_key => :service_id
  has_many :subtotal_rating_values, :class_name => 'SubtotalRatingValue', :foreign_key => :service_id
  has_many :subtotal_values, :class_name => 'SubtotalValue', :foreign_key => :service_id
  has_many :xpsi_tax_errors, :class_name => 'XpsiTaxError', :foreign_key => :service_id
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :products, :through => product_instance_services
  has_many :product_instances, :through => product_instance_services
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rpsi_ts
  has_many :task_queues, :through => rpsi_ts
  has_many :equipment, :through => rpsi_ts
  has_many :product_instances, :through => rpsi_ts
  has_many :normalised_event_types, :through => rshu_cmn_ts
  has_many :accounts, :through => rshu_cmn_ts
  has_many :task_queues, :through => rshu_cmn_ts
  has_many :customer_nodes, :through => service_bill_run_ts
  has_many :bill_run_operations, :through => service_bill_run_ts
  has_many :charge_categories, :through => service_charge_categories
  has_many :derived_attributes, :through => service_das
  has_many :derived_attributes, :through => service_da_arrays
  has_many :customer_nodes, :through => service_histories
  has_many :atlanta_operators, :through => service_histories
  has_many :service_types, :through => service_histories
  has_many :gl_codes, :through => service_histories
  has_many :contracts, :through => service_histories
  has_many :people, :through => service_histories
  has_many :subtotals, :through => subtotal_rating_deltas
  has_many :customer_nodes, :through => subtotal_rating_deltas
  has_many :normalised_event_files, :through => subtotal_rating_deltas
  has_many :normalised_events, :through => subtotal_rating_deltas
  has_many :subtotals, :through => subtotal_rating_values
  has_many :customer_nodes, :through => subtotal_rating_values
  has_many :normalised_event_files, :through => subtotal_rating_values
  has_many :subtotals, :through => subtotal_values
  has_many :customer_nodes, :through => subtotal_values
  has_many :invoices, :through => subtotal_values
  has_many :customer_nodes, :through => xpsi_tax_errors
  has_many :xpsi_tax_errors, :through => xpsi_tax_errors
  has_many :adjustments, :through => xpsi_tax_errors
  has_many :error_messages, :through => xpsi_tax_errors
  has_many :normalised_events, :through => xpsi_tax_errors
  validates_presence_of :service_id
  validates_numericality_of :service_id, :allow_nil => false, :only_integer => true
end
