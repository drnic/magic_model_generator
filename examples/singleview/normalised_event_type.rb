class NormalisedEventType < ActiveRecord::Base
  belongs_to :normalised_event_type, :class_name => 'NormalisedEventType', :foreign_key => :normalised_event_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :normalised_events, :class_name => 'NormalisedEvent', :foreign_key => :normalised_event_type_id
  has_many :normalised_event_errors, :class_name => 'NormalisedEventError', :foreign_key => :normalised_event_type_id
  has_many :normalised_event_types, :class_name => 'NormalisedEventType', :foreign_key => :normalised_event_type_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :normalised_event_type_id
  has_many :rshu_cmn_ts, :class_name => 'RshuCmnT', :foreign_key => :normalised_event_type_id
  has_many :tariff_recurrings, :class_name => 'TariffRecurring', :foreign_key => :normalised_event_type_id
  has_many :currencies, :through => normalised_events
  has_many :normalised_event_files, :through => normalised_events
  has_many :bill_runs, :through => normalised_events
  has_many :normalised_events, :through => normalised_events
  has_many :currencies, :through => normalised_event_errors
  has_many :error_messages, :through => normalised_event_errors
  has_many :normalised_event_files, :through => normalised_event_errors
  has_many :reprocessed_files, :through => normalised_event_errors
  has_many :bill_runs, :through => normalised_event_errors
  has_many :normalised_events, :through => normalised_event_errors
  has_many :atlanta_groups, :through => normalised_event_types
  has_many :atlanta_operators, :through => normalised_event_types
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  has_many :accounts, :through => rshu_cmn_ts
  has_many :task_queues, :through => rshu_cmn_ts
  has_many :services, :through => rshu_cmn_ts
  has_many :tariffs, :through => tariff_recurrings
  has_many :facility_groups, :through => tariff_recurrings
  validates_presence_of :normalised_event_type_id
  validates_numericality_of :normalised_event_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :normalised_event_type_name
  validates_length_of :normalised_event_type_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :admin_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :csr_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :csr_srch_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :inv_admin_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :inv_csr_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
