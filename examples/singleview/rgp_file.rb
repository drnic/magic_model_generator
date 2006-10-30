class RgpFile < ActiveRecord::Base
  belongs_to :rgp_file, :class_name => 'RgpFile', :foreign_key => :rgp_file_id
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  has_many :rgp_files, :class_name => 'RgpFile', :foreign_key => :rgp_file_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :rgp_file_id
  has_many :bill_runs, :through => rgp_files
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  validates_presence_of :rgp_file_id
  validates_numericality_of :rgp_file_id, :allow_nil => false, :only_integer => true
  validates_presence_of :filename
  validates_length_of :filename, :allow_nil => false, :maximum => 255
  validates_presence_of :bill_run_id
  validates_numericality_of :bill_run_id, :allow_nil => false, :only_integer => true
end
