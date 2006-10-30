class FacGroupInstance < ActiveRecord::Base
  belongs_to :fac_group_instance, :class_name => 'FacGroupInstance', :foreign_key => :fac_group_instance_id
  has_many :fac_group_instances, :class_name => 'FacGroupInstance', :foreign_key => :fac_group_instance_id
  has_many :fac_group_instance_hists, :class_name => 'FacGroupInstanceHist', :foreign_key => :fac_group_instance_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :fac_group_instance_id
  has_many :facility_groups, :through => fac_group_instance_hists
  has_many :product_instances, :through => fac_group_instance_hists
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  validates_presence_of :fac_group_instance_id
  validates_numericality_of :fac_group_instance_id, :allow_nil => false, :only_integer => true
end
