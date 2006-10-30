class AtlantaOperator < ActiveRecord::Base
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_profile, :class_name => 'AtlantaProfile', :foreign_key => :atlanta_profile_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  has_many :account_types, :class_name => 'AccountType', :foreign_key => :atlanta_operator_id
  has_many :address_formats, :class_name => 'AddressFormat', :foreign_key => :atlanta_operator_id
  has_many :adjustments, :class_name => 'Adjustment', :foreign_key => :atlanta_operator_id
  has_many :adjustment_batches, :class_name => 'AdjustmentBatch', :foreign_key => :atlanta_operator_id
  has_many :adjustment_types, :class_name => 'AdjustmentType', :foreign_key => :atlanta_operator_id
  has_many :archive_types, :class_name => 'ArchiveType', :foreign_key => :atlanta_operator_id
  has_many :atlanta_forms, :class_name => 'AtlantaForm', :foreign_key => :atlanta_operator_id
  has_many :atlanta_groups, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_operator_id
  has_many :atlanta_help_entries, :class_name => 'AtlantaHelpEntry', :foreign_key => :atlanta_operator_id
  has_many :atlanta_operators, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  has_many :atlanta_profiles, :class_name => 'AtlantaProfile', :foreign_key => :atlanta_operator_id
  has_many :atlanta_roles, :class_name => 'AtlantaRole', :foreign_key => :atlanta_operator_id
  has_many :atlanta_table_partitions, :class_name => 'AtlantaTablePartition', :foreign_key => :atlanta_operator_id
  has_many :attribute_types, :class_name => 'AttributeType', :foreign_key => :atlanta_operator_id
  has_many :bill_runs, :class_name => 'BillRun', :foreign_key => :atlanta_operator_id
  has_many :bill_run_operations, :class_name => 'BillRunOperation', :foreign_key => :atlanta_operator_id
  has_many :bill_run_types, :class_name => 'BillRunType', :foreign_key => :atlanta_operator_id
  has_many :charge_categories, :class_name => 'ChargeCategory', :foreign_key => :atlanta_operator_id
  has_many :charge_output_defn_histories, :class_name => 'ChargeOutputDefnHistory', :foreign_key => :atlanta_operator_id
  has_many :configuration_items, :class_name => 'ConfigurationItem', :foreign_key => :atlanta_operator_id
  has_many :configuration_item_types, :class_name => 'ConfigurationItemType', :foreign_key => :atlanta_operator_id
  has_many :contract_histories, :class_name => 'ContractHistory', :foreign_key => :atlanta_operator_id
  has_many :contract_types, :class_name => 'ContractType', :foreign_key => :atlanta_operator_id
  has_many :conversion_rates, :class_name => 'ConversionRate', :foreign_key => :atlanta_operator_id
  has_many :currency_histories, :class_name => 'CurrencyHistory', :foreign_key => :atlanta_operator_id
  has_many :customer_node_histories, :class_name => 'CustomerNodeHistory', :foreign_key => :atlanta_operator_id
  has_many :customer_node_types, :class_name => 'CustomerNodeType', :foreign_key => :atlanta_operator_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :atlanta_operator_id
  has_many :customer_query_progresses, :class_name => 'CustomerQueryProgress', :foreign_key => :atlanta_operator_id
  has_many :customer_query_types, :class_name => 'CustomerQueryType', :foreign_key => :atlanta_operator_id
  has_many :delete_cascade_groups, :class_name => 'DeleteCascadeGroup', :foreign_key => :atlanta_operator_id
  has_many :derived_attribute_histories, :class_name => 'DerivedAttributeHistory', :foreign_key => :atlanta_operator_id
  has_many :dil_histories, :class_name => 'DilHistory', :foreign_key => :atlanta_operator_id
  has_many :entity_validations, :class_name => 'EntityValidation', :foreign_key => :atlanta_operator_id
  has_many :equipment_histories, :class_name => 'EquipmentHistory', :foreign_key => :atlanta_operator_id
  has_many :equipment_types, :class_name => 'EquipmentType', :foreign_key => :atlanta_operator_id
  has_many :error_groups, :class_name => 'ErrorGroup', :foreign_key => :atlanta_operator_id
  has_many :error_messages, :class_name => 'ErrorMessage', :foreign_key => :atlanta_operator_id
  has_many :facility_group_histories, :class_name => 'FacilityGroupHistory', :foreign_key => :atlanta_operator_id
  has_many :function_defn_histories, :class_name => 'FunctionDefnHistory', :foreign_key => :atlanta_operator_id
  has_many :function_roles, :class_name => 'FunctionRole', :foreign_key => :atlanta_operator_id
  has_many :gl_code_histories, :class_name => 'GlCodeHistory', :foreign_key => :atlanta_operator_id
  has_many :icons, :class_name => 'Icon', :foreign_key => :atlanta_operator_id
  has_many :invoice_format_histories, :class_name => 'InvoiceFormatHistory', :foreign_key => :atlanta_operator_id
  has_many :invoice_message_histories, :class_name => 'InvoiceMessageHistory', :foreign_key => :atlanta_operator_id
  has_many :invoice_type_histories, :class_name => 'InvoiceTypeHistory', :foreign_key => :atlanta_operator_id
  has_many :isp_email_addresses, :class_name => 'IspEmailAddress', :foreign_key => :atlanta_operator_id
  has_many :normalised_event_files, :class_name => 'NormalisedEventFile', :foreign_key => :atlanta_operator_id
  has_many :normalised_event_ft_hists, :class_name => 'NormalisedEventFtHist', :foreign_key => :atlanta_operator_id
  has_many :normalised_event_types, :class_name => 'NormalisedEventType', :foreign_key => :atlanta_operator_id
  has_many :output_devices, :class_name => 'OutputDevice', :foreign_key => :atlanta_operator_id
  has_many :output_methods, :class_name => 'OutputMethod', :foreign_key => :atlanta_operator_id
  has_many :output_method_types, :class_name => 'OutputMethodType', :foreign_key => :atlanta_operator_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :atlanta_operator_id
  has_many :payment_batches, :class_name => 'PaymentBatch', :foreign_key => :atlanta_operator_id
  has_many :payment_types, :class_name => 'PaymentType', :foreign_key => :atlanta_operator_id
  has_many :person_histories, :class_name => 'PersonHistory', :foreign_key => :atlanta_operator_id
  has_many :person_types, :class_name => 'PersonType', :foreign_key => :atlanta_operator_id
  has_many :product_group_histories, :class_name => 'ProductGroupHistory', :foreign_key => :atlanta_operator_id
  has_many :product_histories, :class_name => 'ProductHistory', :foreign_key => :atlanta_operator_id
  has_many :product_instance_histories, :class_name => 'ProductInstanceHistory', :foreign_key => :atlanta_operator_id
  has_many :receivable_type_histories, :class_name => 'ReceivableTypeHistory', :foreign_key => :atlanta_operator_id
  has_many :reference_types, :class_name => 'ReferenceType', :foreign_key => :atlanta_operator_id
  has_many :reprocessed_files, :class_name => 'ReprocessedFile', :foreign_key => :atlanta_operator_id
  has_many :schedules, :class_name => 'Schedule', :foreign_key => :atlanta_operator_id
  has_many :schedule_task_types, :class_name => 'ScheduleTaskType', :foreign_key => :atlanta_operator_id
  has_many :service_histories, :class_name => 'ServiceHistory', :foreign_key => :atlanta_operator_id
  has_many :service_types, :class_name => 'ServiceType', :foreign_key => :atlanta_operator_id
  has_many :subtotal_histories, :class_name => 'SubtotalHistory', :foreign_key => :atlanta_operator_id
  has_many :summary_of_change_views, :class_name => 'SummaryOfChangeView', :foreign_key => :atlanta_operator_id
  has_many :tariff_histories, :class_name => 'TariffHistory', :foreign_key => :atlanta_operator_id
  has_many :task_queues, :class_name => 'TaskQueue', :foreign_key => :atlanta_operator_id
  has_many :template_histories, :class_name => 'TemplateHistory', :foreign_key => :atlanta_operator_id
  has_many :variable_defn_histories, :class_name => 'VariableDefnHistory', :foreign_key => :atlanta_operator_id
  has_many :work_forces, :class_name => 'WorkForce', :foreign_key => :atlanta_operator_id
  has_many :atlanta_groups, :through => account_types
  has_many :currencies, :through => account_types
  has_many :invoice_types, :through => account_types
  has_many :account_types, :through => account_types
  has_many :atlanta_groups, :through => address_formats
  has_many :address_formats, :through => address_formats
  has_many :entity_validations, :through => address_formats
  has_many :customer_queries, :through => adjustments
  has_many :currencies, :through => adjustments
  has_many :invoices, :through => adjustments
  has_many :adjustments, :through => adjustments
  has_many :adjustment_types, :through => adjustments
  has_many :adjustment_batches, :through => adjustments
  has_many :currencies, :through => adjustment_batches
  has_many :adjustment_types, :through => adjustment_batches
  has_many :adjustment_batches, :through => adjustment_batches
  has_many :atlanta_groups, :through => adjustment_types
  has_many :currencies, :through => adjustment_types
  has_many :adjustment_types, :through => adjustment_types
  has_many :entity_validations, :through => adjustment_types
  has_many :atlanta_groups, :through => archive_types
  has_many :archive_types, :through => archive_types
  has_many :atlanta_groups, :through => atlanta_forms
  has_many :atlanta_forms, :through => atlanta_forms
  has_many :atlanta_groups, :through => atlanta_groups
  has_many :atlanta_groups, :through => atlanta_help_entries
  has_many :atlanta_help_entries, :through => atlanta_help_entries
  has_many :atlanta_groups, :through => atlanta_operators
  has_many :atlanta_profiles, :through => atlanta_operators
  has_many :people, :through => atlanta_operators
  has_many :atlanta_groups, :through => atlanta_profiles
  has_many :atlanta_profiles, :through => atlanta_profiles
  has_many :atlanta_groups, :through => atlanta_roles
  has_many :atlanta_roles, :through => atlanta_roles
  has_many :atlanta_groups, :through => atlanta_table_partitions
  has_many :task_queues, :through => atlanta_table_partitions
  has_many :atlanta_table_partitions, :through => atlanta_table_partitions
  has_many :schedules, :through => atlanta_table_partitions
  has_many :atlanta_groups, :through => attribute_types
  has_many :attribute_types, :through => attribute_types
  has_many :reference_types, :through => attribute_types
  has_many :atlanta_help_entries, :through => attribute_types
  has_many :atlanta_groups, :through => bill_runs
  has_many :bill_run_types, :through => bill_runs
  has_many :error_messages, :through => bill_runs
  has_many :bill_runs, :through => bill_runs
  has_many :error_messages, :through => bill_run_operations
  has_many :task_queues, :through => bill_run_operations
  has_many :bill_runs, :through => bill_run_operations
  has_many :bill_run_operations, :through => bill_run_operations
  has_many :atlanta_groups, :through => bill_run_types
  has_many :currencies, :through => bill_run_types
  has_many :bill_run_types, :through => bill_run_types
  has_many :atlanta_groups, :through => charge_categories
  has_many :charge_categories, :through => charge_categories
  has_many :atlanta_groups, :through => charge_output_defn_histories
  has_many :charge_output_defns, :through => charge_output_defn_histories
  has_many :expression_lists, :through => charge_output_defn_histories
  has_many :atlanta_groups, :through => configuration_items
  has_many :configuration_item_types, :through => configuration_items
  has_many :configuration_items, :through => configuration_items
  has_many :atlanta_groups, :through => configuration_item_types
  has_many :configuration_item_types, :through => configuration_item_types
  has_many :atlanta_groups, :through => contract_histories
  has_many :customer_nodes, :through => contract_histories
  has_many :contract_types, :through => contract_histories
  has_many :contracts, :through => contract_histories
  has_many :people, :through => contract_histories
  has_many :atlanta_groups, :through => contract_types
  has_many :icons, :through => contract_types
  has_many :contract_types, :through => contract_types
  has_many :entity_validations, :through => contract_types
  has_many :atlanta_groups, :through => currency_histories
  has_many :currencies, :through => currency_histories
  has_many :atlanta_groups, :through => customer_node_histories
  has_many :customer_nodes, :through => customer_node_histories
  has_many :currencies, :through => customer_node_histories
  has_many :customer_node_types, :through => customer_node_histories
  has_many :schedules, :through => customer_node_histories
  has_many :gl_codes, :through => customer_node_histories
  has_many :people, :through => customer_node_histories
  has_many :atlanta_groups, :through => customer_node_types
  has_many :icons, :through => customer_node_types
  has_many :address_formats, :through => customer_node_types
  has_many :customer_node_types, :through => customer_node_types
  has_many :invoice_formats, :through => customer_node_types
  has_many :gl_codes, :through => customer_node_types
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :customer_queries, :through => customer_query_progresses
  has_many :work_forces, :through => customer_query_progresses
  has_many :atlanta_groups, :through => customer_query_types
  has_many :icons, :through => customer_query_types
  has_many :customer_query_types, :through => customer_query_types
  has_many :atlanta_groups, :through => delete_cascade_groups
  has_many :delete_cascade_groups, :through => delete_cascade_groups
  has_many :atlanta_groups, :through => derived_attribute_histories
  has_many :derived_attributes, :through => derived_attribute_histories
  has_many :entity_validations, :through => derived_attribute_histories
  has_many :atlanta_groups, :through => dil_histories
  has_many :dils, :through => dil_histories
  has_many :atlanta_groups, :through => entity_validations
  has_many :entity_validations, :through => entity_validations
  has_many :atlanta_groups, :through => equipment_histories
  has_many :equipment_types, :through => equipment_histories
  has_many :equipment, :through => equipment_histories
  has_many :atlanta_groups, :through => equipment_types
  has_many :icons, :through => equipment_types
  has_many :address_formats, :through => equipment_types
  has_many :equipment_types, :through => equipment_types
  has_many :atlanta_groups, :through => error_groups
  has_many :atlanta_groups, :through => error_messages
  has_many :error_messages, :through => error_messages
  has_many :atlanta_groups, :through => facility_group_histories
  has_many :icons, :through => facility_group_histories
  has_many :facility_groups, :through => facility_group_histories
  has_many :atlanta_groups, :through => function_defn_histories
  has_many :function_defns, :through => function_defn_histories
  has_many :atlanta_groups, :through => function_roles
  has_many :function_roles, :through => function_roles
  has_many :atlanta_groups, :through => gl_code_histories
  has_many :gl_codes, :through => gl_code_histories
  has_many :atlanta_groups, :through => icons
  has_many :icons, :through => icons
  has_many :atlanta_groups, :through => invoice_format_histories
  has_many :templates, :through => invoice_format_histories
  has_many :invoice_formats, :through => invoice_format_histories
  has_many :entity_validations, :through => invoice_format_histories
  has_many :atlanta_groups, :through => invoice_message_histories
  has_many :customer_nodes, :through => invoice_message_histories
  has_many :task_queues, :through => invoice_message_histories
  has_many :invoice_formats, :through => invoice_message_histories
  has_many :account_types, :through => invoice_message_histories
  has_many :schedules, :through => invoice_message_histories
  has_many :invoice_messages, :through => invoice_message_histories
  has_many :atlanta_groups, :through => invoice_type_histories
  has_many :invoice_types, :through => invoice_type_histories
  has_many :expression_lists, :through => invoice_type_histories
  has_many :atlanta_groups, :through => isp_email_addresses
  has_many :task_queues, :through => normalised_event_files
  has_many :normalised_event_files, :through => normalised_event_files
  has_many :normalised_event_fts, :through => normalised_event_files
  has_many :atlanta_groups, :through => normalised_event_ft_hists
  has_many :normalised_event_fts, :through => normalised_event_ft_hists
  has_many :dils, :through => normalised_event_ft_hists
  has_many :expression_lists, :through => normalised_event_ft_hists
  has_many :atlanta_groups, :through => normalised_event_types
  has_many :normalised_event_types, :through => normalised_event_types
  has_many :atlanta_groups, :through => output_devices
  has_many :output_devices, :through => output_devices
  has_many :atlanta_groups, :through => output_methods
  has_many :output_method_types, :through => output_methods
  has_many :output_methods, :through => output_methods
  has_many :output_devices, :through => output_methods
  has_many :atlanta_groups, :through => output_method_types
  has_many :output_method_types, :through => output_method_types
  has_many :payment_types, :through => payments
  has_many :customer_nodes, :through => payments
  has_many :currencies, :through => payments
  has_many :invoices, :through => payments
  has_many :payment_batches, :through => payments
  has_many :people, :through => payments
  has_many :payments, :through => payments
  has_many :payment_types, :through => payment_batches
  has_many :currencies, :through => payment_batches
  has_many :payment_batches, :through => payment_batches
  has_many :atlanta_groups, :through => payment_types
  has_many :payment_types, :through => payment_types
  has_many :currencies, :through => payment_types
  has_many :entity_validations, :through => payment_types
  has_many :atlanta_groups, :through => person_histories
  has_many :person_types, :through => person_histories
  has_many :people, :through => person_histories
  has_many :atlanta_groups, :through => person_types
  has_many :icons, :through => person_types
  has_many :address_formats, :through => person_types
  has_many :person_types, :through => person_types
  has_many :entity_validations, :through => person_types
  has_many :atlanta_groups, :through => product_group_histories
  has_many :product_groups, :through => product_group_histories
  has_many :atlanta_groups, :through => product_histories
  has_many :contract_types, :through => product_histories
  has_many :icons, :through => product_histories
  has_many :products, :through => product_histories
  has_many :customer_nodes, :through => product_instance_histories
  has_many :products, :through => product_instance_histories
  has_many :contracts, :through => product_instance_histories
  has_many :product_instances, :through => product_instance_histories
  has_many :atlanta_groups, :through => receivable_type_histories
  has_many :accounts, :through => receivable_type_histories
  has_many :receivable_types, :through => receivable_type_histories
  has_many :gl_codes, :through => receivable_type_histories
  has_many :atlanta_groups, :through => reference_types
  has_many :reference_types, :through => reference_types
  has_many :normalised_event_files, :through => reprocessed_files
  has_many :task_queues, :through => reprocessed_files
  has_many :reprocessed_files, :through => reprocessed_files
  has_many :atlanta_groups, :through => schedules
  has_many :schedule_task_types, :through => schedules
  has_many :schedules, :through => schedules
  has_many :atlanta_groups, :through => schedule_task_types
  has_many :error_messages, :through => schedule_task_types
  has_many :schedule_task_types, :through => schedule_task_types
  has_many :entity_validations, :through => schedule_task_types
  has_many :customer_nodes, :through => service_histories
  has_many :service_types, :through => service_histories
  has_many :services, :through => service_histories
  has_many :gl_codes, :through => service_histories
  has_many :contracts, :through => service_histories
  has_many :people, :through => service_histories
  has_many :atlanta_groups, :through => service_types
  has_many :icons, :through => service_types
  has_many :address_formats, :through => service_types
  has_many :service_types, :through => service_types
  has_many :gl_codes, :through => service_types
  has_many :atlanta_groups, :through => subtotal_histories
  has_many :subtotals, :through => subtotal_histories
  has_many :currencies, :through => subtotal_histories
  has_many :receivable_types, :through => subtotal_histories
  has_many :gl_codes, :through => subtotal_histories
  has_many :atlanta_groups, :through => summary_of_change_views
  has_many :summary_of_change_views, :through => summary_of_change_views
  has_many :atlanta_groups, :through => tariff_histories
  has_many :currencies, :through => tariff_histories
  has_many :tariffs, :through => tariff_histories
  has_many :charge_categories, :through => tariff_histories
  has_many :receivable_types, :through => tariff_histories
  has_many :atlanta_groups, :through => task_queues
  has_many :task_queues, :through => task_queues
  has_many :schedules, :through => task_queues
  has_many :atlanta_groups, :through => template_histories
  has_many :templates, :through => template_histories
  has_many :atlanta_groups, :through => variable_defn_histories
  has_many :variable_defns, :through => variable_defn_histories
  has_many :atlanta_groups, :through => work_forces
  has_many :work_forces, :through => work_forces
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :operator_full_name
  validates_length_of :operator_full_name, :allow_nil => false, :maximum => 80
  validates_presence_of :operator_login_name
  validates_length_of :operator_login_name, :allow_nil => false, :maximum => 30
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :last_mod_atlanta_operator_id
  validates_numericality_of :last_mod_atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_profile_id
  validates_numericality_of :atlanta_profile_id, :allow_nil => false, :only_integer => true
  validates_presence_of :email_address
  validates_length_of :email_address, :allow_nil => false, :maximum => 255
  validates_length_of :work_phone_nr, :allow_nil => true, :maximum => 30
  validates_length_of :home_phone_nr, :allow_nil => true, :maximum => 30
  validates_length_of :fax_nr, :allow_nil => true, :maximum => 30
  validates_numericality_of :person_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :superuser_ind_code, :allow_nil => true, :only_integer => true
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
end
