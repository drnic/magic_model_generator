class FacilityGroup < ActiveRecord::Base
  belongs_to :facility_group, :class_name => 'FacilityGroup', :foreign_key => :facility_group_id
  has_many :fac_group_compatibilities, :class_name => 'FacGroupCompatibility', :foreign_key => :facility_group_id
  has_many :fac_group_instance_hists, :class_name => 'FacGroupInstanceHist', :foreign_key => :facility_group_id
  has_many :facilities, :class_name => 'Facility', :foreign_key => :facility_group_id
  has_many :facility_groups, :class_name => 'FacilityGroup', :foreign_key => :facility_group_id
  has_many :facility_group_histories, :class_name => 'FacilityGroupHistory', :foreign_key => :facility_group_id
  has_many :product_facility_groups, :class_name => 'ProductFacilityGroup', :foreign_key => :facility_group_id
  has_many :tariff_recurrings, :class_name => 'TariffRecurring', :foreign_key => :facility_group_id
  has_many :fac_group_instances, :through => fac_group_instance_hists
  has_many :product_instances, :through => fac_group_instance_hists
  has_many :atlanta_groups, :through => facility_group_histories
  has_many :icons, :through => facility_group_histories
  has_many :atlanta_operators, :through => facility_group_histories
  has_many :products, :through => product_facility_groups
  has_many :normalised_event_types, :through => tariff_recurrings
  has_many :tariffs, :through => tariff_recurrings
  validates_presence_of :facility_group_id
  validates_numericality_of :facility_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
