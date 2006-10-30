class BillRun < ActiveRecord::Base
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  belongs_to :bill_run_type, :class_name => 'BillRunType', :foreign_key => :bill_run_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  has_many :bill_runs, :class_name => 'BillRun', :foreign_key => :bill_run_id
  has_many :bill_run_operations, :class_name => 'BillRunOperation', :foreign_key => :bill_run_id
  has_many :customer_nodes, :class_name => 'CustomerNode', :foreign_key => :bill_run_id
  has_many :inv_report_accounts_ts, :class_name => 'InvReportAccountsT', :foreign_key => :bill_run_id
  has_many :invoices, :class_name => 'Invoice', :foreign_key => :bill_run_id
  has_many :normalised_events, :class_name => 'NormalisedEvent', :foreign_key => :bill_run_id
  has_many :normalised_event_errors, :class_name => 'NormalisedEventError', :foreign_key => :bill_run_id
  has_many :rgp_files, :class_name => 'RgpFile', :foreign_key => :bill_run_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :bill_run_id
  has_many :t2_inv_revoked_invoices, :class_name => 'T2InvRevokedInvoice', :foreign_key => :bill_run_id
  has_many :t2_inv_suppress_invoices, :class_name => 'T2InvSuppressInvoice', :foreign_key => :bill_run_id
  has_many :atlanta_groups, :through => bill_runs
  has_many :bill_run_types, :through => bill_runs
  has_many :error_messages, :through => bill_runs
  has_many :atlanta_operators, :through => bill_runs
  has_many :error_messages, :through => bill_run_operations
  has_many :task_queues, :through => bill_run_operations
  has_many :atlanta_operators, :through => bill_run_operations
  has_many :bill_run_operations, :through => bill_run_operations
  has_many :customer_nodes, :through => customer_nodes
  has_many :bill_run_operations, :through => customer_nodes
  has_many :customer_nodes, :through => inv_report_accounts_ts
  has_many :accounts, :through => inv_report_accounts_ts
  has_many :customer_nodes, :through => invoices
  has_many :accounts, :through => invoices
  has_many :invoices, :through => invoices
  has_many :invoice_types, :through => invoices
  has_many :normalised_event_types, :through => normalised_events
  has_many :currencies, :through => normalised_events
  has_many :normalised_event_files, :through => normalised_events
  has_many :normalised_events, :through => normalised_events
  has_many :normalised_event_types, :through => normalised_event_errors
  has_many :currencies, :through => normalised_event_errors
  has_many :error_messages, :through => normalised_event_errors
  has_many :normalised_event_files, :through => normalised_event_errors
  has_many :reprocessed_files, :through => normalised_event_errors
  has_many :normalised_events, :through => normalised_event_errors
  has_many :rgp_files, :through => rgp_files
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  has_many :customer_nodes, :through => t2_inv_suppress_invoices
  validates_presence_of :bill_run_id
  validates_numericality_of :bill_run_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :bill_run_type_id
  validates_numericality_of :bill_run_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :status_code
  validates_numericality_of :status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :summary_status_code
  validates_numericality_of :summary_status_code, :allow_nil => false, :only_integer => true
  validates_length_of :process_identifier, :allow_nil => true, :maximum => 80
  validates_presence_of :effective_date
  validates_presence_of :effective_day_of_month
  validates_numericality_of :effective_day_of_month, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :creation_task_queue_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :billing_schedule_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :qa_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :last_task_queue_id, :allow_nil => true, :only_integer => true
  validates_length_of :last_process_name, :allow_nil => true, :maximum => 80
  validates_presence_of :customer_count
  validates_numericality_of :customer_count, :allow_nil => false, :only_integer => true
  validates_numericality_of :amount, :allow_nil => true
  validates_numericality_of :error_message_id, :allow_nil => true, :only_integer => true
  validates_length_of :error_message, :allow_nil => true, :maximum => 4000
  validates_numericality_of :general_stats1, :allow_nil => true
  validates_numericality_of :general_stats2, :allow_nil => true
  validates_numericality_of :general_stats3, :allow_nil => true
  validates_numericality_of :general_stats4, :allow_nil => true
  validates_numericality_of :general_stats5, :allow_nil => true
  validates_numericality_of :general_stats6, :allow_nil => true
  validates_numericality_of :general_stats7, :allow_nil => true
  validates_numericality_of :general_stats8, :allow_nil => true
  validates_numericality_of :general_stats9, :allow_nil => true
  validates_numericality_of :general_stats10, :allow_nil => true
  validates_numericality_of :billing_configuration_code, :allow_nil => true, :only_integer => true
end
