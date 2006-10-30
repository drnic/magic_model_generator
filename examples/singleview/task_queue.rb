class TaskQueue < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :schedule, :class_name => 'Schedule', :foreign_key => :schedule_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :archive_lock_ts, :class_name => 'ArchiveLockT', :foreign_key => :task_queue_id
  has_many :archive_results, :class_name => 'ArchiveResult', :foreign_key => :task_queue_id
  has_many :atlanta_table_partitions, :class_name => 'AtlantaTablePartition', :foreign_key => :task_queue_id
  has_many :bill_run_operations, :class_name => 'BillRunOperation', :foreign_key => :task_queue_id
  has_many :customer_node_corresponds, :class_name => 'CustomerNodeCorrespond', :foreign_key => :task_queue_id
  has_many :entity_remaps, :class_name => 'EntityRemap', :foreign_key => :task_queue_id
  has_many :gl_uploads, :class_name => 'GlUpload', :foreign_key => :task_queue_id
  has_many :invoice_message_histories, :class_name => 'InvoiceMessageHistory', :foreign_key => :task_queue_id
  has_many :normalised_event_files, :class_name => 'NormalisedEventFile', :foreign_key => :task_queue_id
  has_many :racr_clec_t1s, :class_name => 'RacrClecT1', :foreign_key => :task_queue_id
  has_many :racr_clec_t2s, :class_name => 'RacrClecT2', :foreign_key => :task_queue_id
  has_many :racr_clec_t3s, :class_name => 'RacrClecT3', :foreign_key => :task_queue_id
  has_many :racr_ts, :class_name => 'RacrT', :foreign_key => :task_queue_id
  has_many :ragd_clec_ts, :class_name => 'RagdClecT', :foreign_key => :task_queue_id
  has_many :ragd_ts, :class_name => 'RagdT', :foreign_key => :task_queue_id
  has_many :rapc_ts, :class_name => 'RapcT', :foreign_key => :task_queue_id
  has_many :rdfd_cmn_ts, :class_name => 'RdfdCmnT', :foreign_key => :task_queue_id
  has_many :rdfd_ts, :class_name => 'RdfdT', :foreign_key => :task_queue_id
  has_many :reprocessed_files, :class_name => 'ReprocessedFile', :foreign_key => :task_queue_id
  has_many :rmag_ts, :class_name => 'RmagT', :foreign_key => :task_queue_id
  has_many :rpmr_ts, :class_name => 'RpmrT', :foreign_key => :task_queue_id
  has_many :rpsi_ts, :class_name => 'RpsiT', :foreign_key => :task_queue_id
  has_many :rser_ts, :class_name => 'RserT', :foreign_key => :task_queue_id
  has_many :rshu_cmn_ts, :class_name => 'RshuCmnT', :foreign_key => :task_queue_id
  has_many :t2_pay_statements, :class_name => 'T2PayStatement', :foreign_key => :task_queue_id
  has_many :t2_rep_brr_ts, :class_name => 'T2RepBrrT', :foreign_key => :task_queue_id
  has_many :t2_rep_trr_ts, :class_name => 'T2RepTrrT', :foreign_key => :task_queue_id
  has_many :t2_rep_ubr_ts, :class_name => 'T2RepUbrT', :foreign_key => :task_queue_id
  has_many :task_queues, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  has_many :task_queue_results, :class_name => 'TaskQueueResult', :foreign_key => :task_queue_id
  has_many :xpsi_update_captures, :class_name => 'XpsiUpdateCapture', :foreign_key => :task_queue_id
  has_many :archive_types, :through => archive_results
  has_many :archive_results, :through => archive_results
  has_many :atlanta_groups, :through => atlanta_table_partitions
  has_many :atlanta_operators, :through => atlanta_table_partitions
  has_many :atlanta_table_partitions, :through => atlanta_table_partitions
  has_many :schedules, :through => atlanta_table_partitions
  has_many :error_messages, :through => bill_run_operations
  has_many :atlanta_operators, :through => bill_run_operations
  has_many :bill_runs, :through => bill_run_operations
  has_many :bill_run_operations, :through => bill_run_operations
  has_many :customer_nodes, :through => customer_node_corresponds
  has_many :customer_nodes, :through => entity_remaps
  has_many :error_messages, :through => entity_remaps
  has_many :accounts, :through => gl_uploads
  has_many :atlanta_groups, :through => invoice_message_histories
  has_many :customer_nodes, :through => invoice_message_histories
  has_many :atlanta_operators, :through => invoice_message_histories
  has_many :invoice_formats, :through => invoice_message_histories
  has_many :account_types, :through => invoice_message_histories
  has_many :schedules, :through => invoice_message_histories
  has_many :invoice_messages, :through => invoice_message_histories
  has_many :atlanta_operators, :through => normalised_event_files
  has_many :normalised_event_files, :through => normalised_event_files
  has_many :normalised_event_fts, :through => normalised_event_files
  has_many :accounts, :through => racr_clec_t1s
  has_many :accounts, :through => racr_clec_t2s
  has_many :customer_nodes, :through => ragd_clec_ts
  has_many :customer_nodes, :through => ragd_ts
  has_many :normalised_event_files, :through => reprocessed_files
  has_many :atlanta_operators, :through => reprocessed_files
  has_many :reprocessed_files, :through => reprocessed_files
  has_many :customer_nodes, :through => rpsi_ts
  has_many :equipment, :through => rpsi_ts
  has_many :services, :through => rpsi_ts
  has_many :product_instances, :through => rpsi_ts
  has_many :normalised_event_types, :through => rshu_cmn_ts
  has_many :accounts, :through => rshu_cmn_ts
  has_many :services, :through => rshu_cmn_ts
  has_many :customer_queries, :through => t2_pay_statements
  has_many :customer_nodes, :through => t2_pay_statements
  has_many :t2_pay_statements, :through => t2_pay_statements
  has_many :payments, :through => t2_pay_statements
  has_many :customer_node_types, :through => t2_rep_brr_ts
  has_many :customer_node_types, :through => t2_rep_trr_ts
  has_many :customer_node_types, :through => t2_rep_ubr_ts
  has_many :atlanta_groups, :through => task_queues
  has_many :atlanta_operators, :through => task_queues
  has_many :schedules, :through => task_queues
  has_many :xpsi_update_captures, :through => xpsi_update_captures
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :schedule_id
  validates_numericality_of :schedule_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :instance_name, :allow_nil => true, :maximum => 9
  validates_presence_of :email_address
  validates_length_of :email_address, :allow_nil => false, :maximum => 255
  validates_presence_of :start_date
  validates_presence_of :effective_date
  validates_presence_of :task_status_code
  validates_numericality_of :task_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :temp_data_id, :allow_nil => true, :only_integer => true
  validates_presence_of :purge_period
  validates_numericality_of :purge_period, :allow_nil => false, :only_integer => true
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
  validates_length_of :general_11, :allow_nil => true, :maximum => 255
  validates_length_of :general_12, :allow_nil => true, :maximum => 255
  validates_length_of :general_13, :allow_nil => true, :maximum => 255
  validates_length_of :general_14, :allow_nil => true, :maximum => 255
  validates_length_of :general_15, :allow_nil => true, :maximum => 255
  validates_length_of :general_16, :allow_nil => true, :maximum => 255
  validates_length_of :general_17, :allow_nil => true, :maximum => 255
  validates_length_of :general_18, :allow_nil => true, :maximum => 255
  validates_length_of :general_19, :allow_nil => true, :maximum => 255
  validates_length_of :general_20, :allow_nil => true, :maximum => 255
  validates_length_of :general_21, :allow_nil => true, :maximum => 255
  validates_length_of :general_22, :allow_nil => true, :maximum => 255
  validates_length_of :general_23, :allow_nil => true, :maximum => 255
  validates_length_of :general_24, :allow_nil => true, :maximum => 255
  validates_length_of :general_25, :allow_nil => true, :maximum => 255
end
