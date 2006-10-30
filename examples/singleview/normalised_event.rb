class NormalisedEvent < ActiveRecord::Base
  belongs_to :normalised_event, :class_name => 'NormalisedEvent', :foreign_key => :normalised_event_id
  belongs_to :normalised_event_type, :class_name => 'NormalisedEventType', :foreign_key => :normalised_event_type_id
  belongs_to :normalised_event_file, :class_name => 'NormalisedEventFile', :foreign_key => :normalised_event_file_id
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :normalised_event_id
  has_many :normalised_events, :class_name => 'NormalisedEvent', :foreign_key => :normalised_event_id
  has_many :normalised_event_errors, :class_name => 'NormalisedEventError', :foreign_key => :normalised_event_id
  has_many :subtotal_rating_deltas, :class_name => 'SubtotalRatingDelta', :foreign_key => :normalised_event_id
  has_many :xpsi_tax_errors, :class_name => 'XpsiTaxError', :foreign_key => :normalised_event_id
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :normalised_event_types, :through => normalised_events
  has_many :currencies, :through => normalised_events
  has_many :normalised_event_files, :through => normalised_events
  has_many :bill_runs, :through => normalised_events
  has_many :normalised_event_types, :through => normalised_event_errors
  has_many :currencies, :through => normalised_event_errors
  has_many :error_messages, :through => normalised_event_errors
  has_many :normalised_event_files, :through => normalised_event_errors
  has_many :reprocessed_files, :through => normalised_event_errors
  has_many :bill_runs, :through => normalised_event_errors
  has_many :subtotals, :through => subtotal_rating_deltas
  has_many :customer_nodes, :through => subtotal_rating_deltas
  has_many :normalised_event_files, :through => subtotal_rating_deltas
  has_many :services, :through => subtotal_rating_deltas
  has_many :customer_nodes, :through => xpsi_tax_errors
  has_many :xpsi_tax_errors, :through => xpsi_tax_errors
  has_many :adjustments, :through => xpsi_tax_errors
  has_many :error_messages, :through => xpsi_tax_errors
  has_many :services, :through => xpsi_tax_errors
  validates_presence_of :normalised_event_id
  validates_numericality_of :normalised_event_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :normalised_event_type_id
  validates_numericality_of :normalised_event_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :parent_normalised_event_id, :allow_nil => true, :only_integer => true
  validates_presence_of :normalised_event_file_id
  validates_numericality_of :normalised_event_file_id, :allow_nil => false, :only_integer => true
  validates_presence_of :file_record_nr
  validates_numericality_of :file_record_nr, :allow_nil => false, :only_integer => true
  validates_numericality_of :external_file_record_nr, :allow_nil => true, :only_integer => true
  validates_numericality_of :original_file_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :original_file_record_nr, :allow_nil => true, :only_integer => true
  validates_numericality_of :reprocessed_count, :allow_nil => true, :only_integer => true
  validates_length_of :a_party_id, :allow_nil => true, :maximum => 64
  validates_length_of :a_party_network_id, :allow_nil => true, :maximum => 64
  validates_length_of :a_party_name, :allow_nil => true, :maximum => 64
  validates_numericality_of :a_party_ton_code, :allow_nil => true, :only_integer => true
  validates_length_of :a_party_cell_id, :allow_nil => true, :maximum => 20
  validates_numericality_of :a_party_carrier_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :a_party_location_code, :allow_nil => true, :only_integer => true
  validates_length_of :a_party_route, :allow_nil => true, :maximum => 80
  validates_length_of :b_party_id, :allow_nil => true, :maximum => 64
  validates_length_of :b_party_network_id, :allow_nil => true, :maximum => 64
  validates_length_of :b_party_name, :allow_nil => true, :maximum => 64
  validates_numericality_of :b_party_ton_code, :allow_nil => true, :only_integer => true
  validates_length_of :b_party_cell_id, :allow_nil => true, :maximum => 20
  validates_numericality_of :b_party_carrier_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :b_party_location_code, :allow_nil => true, :only_integer => true
  validates_length_of :b_party_route, :allow_nil => true, :maximum => 80
  validates_length_of :c_party_id, :allow_nil => true, :maximum => 64
  validates_length_of :c_party_network_id, :allow_nil => true, :maximum => 64
  validates_length_of :c_party_name, :allow_nil => true, :maximum => 64
  validates_numericality_of :c_party_internal_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :c_party_ton_code, :allow_nil => true, :only_integer => true
  validates_length_of :c_party_cell_id, :allow_nil => true, :maximum => 20
  validates_numericality_of :c_party_carrier_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :c_party_location_code, :allow_nil => true, :only_integer => true
  validates_length_of :c_party_route, :allow_nil => true, :maximum => 80
  validates_length_of :full_path, :allow_nil => true, :maximum => 40
  validates_numericality_of :cascade_carrier_code, :allow_nil => true, :only_integer => true
  validates_length_of :event_source, :allow_nil => true, :maximum => 40
  validates_numericality_of :event_class_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :bill_run_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :root_customer_node_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :event_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :event_sub_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :duration, :allow_nil => true
  validates_numericality_of :volume, :allow_nil => true
  validates_numericality_of :pulses, :allow_nil => true, :only_integer => true
  validates_numericality_of :charge, :allow_nil => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_length_of :rate_band, :allow_nil => true, :maximum => 40
  validates_length_of :general_1, :allow_nil => true, :maximum => 4000
  validates_length_of :general_2, :allow_nil => true, :maximum => 4000
  validates_length_of :general_3, :allow_nil => true, :maximum => 4000
  validates_length_of :general_4, :allow_nil => true, :maximum => 4000
  validates_length_of :general_5, :allow_nil => true, :maximum => 4000
  validates_length_of :general_6, :allow_nil => true, :maximum => 4000
  validates_length_of :general_7, :allow_nil => true, :maximum => 4000
  validates_length_of :general_8, :allow_nil => true, :maximum => 4000
  validates_length_of :general_9, :allow_nil => true, :maximum => 4000
  validates_length_of :general_10, :allow_nil => true, :maximum => 4000
  validates_length_of :general_11, :allow_nil => true, :maximum => 4000
  validates_length_of :general_12, :allow_nil => true, :maximum => 4000
  validates_length_of :general_13, :allow_nil => true, :maximum => 4000
  validates_length_of :general_14, :allow_nil => true, :maximum => 4000
  validates_length_of :general_15, :allow_nil => true, :maximum => 4000
  validates_length_of :general_16, :allow_nil => true, :maximum => 4000
  validates_length_of :general_17, :allow_nil => true, :maximum => 4000
  validates_length_of :general_18, :allow_nil => true, :maximum => 4000
  validates_length_of :general_19, :allow_nil => true, :maximum => 4000
  validates_length_of :general_20, :allow_nil => true, :maximum => 4000
  validates_length_of :dummy, :allow_nil => true, :maximum => 1
  validates_presence_of :partition_nr
  validates_numericality_of :partition_nr, :allow_nil => false, :only_integer => true
end
