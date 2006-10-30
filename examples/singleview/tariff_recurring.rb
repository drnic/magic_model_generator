class TariffRecurring < ActiveRecord::Base
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  belongs_to :normalised_event_type, :class_name => 'NormalisedEventType', :foreign_key => :normalised_event_type_id
  belongs_to :facility_group, :class_name => 'FacilityGroup', :foreign_key => :facility_group_id
  validates_presence_of :tariff_id
  validates_numericality_of :tariff_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_numericality_of :recurring_charge_period, :allow_nil => true, :only_integer => true
  validates_numericality_of :recurring_charge_unit_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :advance_charge_period, :allow_nil => true, :only_integer => true
  validates_numericality_of :prorate_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :prorate_period, :allow_nil => true, :only_integer => true
  validates_numericality_of :prorate_unit_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :days_per_month, :allow_nil => true
  validates_numericality_of :fixed_date_period, :allow_nil => true, :only_integer => true
  validates_numericality_of :active_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :interim_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :normalised_event_type_id
  validates_numericality_of :normalised_event_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :event_type_code
  validates_numericality_of :event_type_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :event_sub_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :adjustment_event_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :adjustment_event_sub_type_code, :allow_nil => true, :only_integer => true
  validates_presence_of :charge_start_date_code
  validates_numericality_of :charge_start_date_code, :allow_nil => false, :only_integer => true
  validates_presence_of :charged_entity_code
  validates_numericality_of :charged_entity_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :facility_group_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :eligibility_expression_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :assignment_expression_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :adjustment_expression_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :prorate_split_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :charge_period_split_ind_code, :allow_nil => true, :only_integer => true
end
