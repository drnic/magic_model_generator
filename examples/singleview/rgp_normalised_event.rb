class RgpNormalisedEvent < ActiveRecord::Base
  belongs_to :rgp_file, :class_name => 'RgpFile', :foreign_key => :rgp_file_id
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  belongs_to :fac_group_instance, :class_name => 'FacGroupInstance', :foreign_key => :fac_group_instance_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :equipment, :class_name => 'Equipment', :foreign_key => :equipment_id
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  belongs_to :bill_run, :class_name => 'BillRun', :foreign_key => :bill_run_id
  belongs_to :normalised_event_type, :class_name => 'NormalisedEventType', :foreign_key => :normalised_event_type_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  validates_presence_of :rgp_file_id
  validates_numericality_of :rgp_file_id, :allow_nil => false, :only_integer => true
  validates_presence_of :rgp_file_record_nr
  validates_numericality_of :rgp_file_record_nr, :allow_nil => false, :only_integer => true
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :fac_group_instance_id, :allow_nil => true, :only_integer => true
  validates_presence_of :root_customer_node_id
  validates_numericality_of :root_customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :service_id
  validates_numericality_of :service_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :equipment_id, :allow_nil => true, :only_integer => true
  validates_presence_of :tariff_id
  validates_numericality_of :tariff_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 30
  validates_presence_of :bill_run_id
  validates_numericality_of :bill_run_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :qa_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :period_start_date
  validates_presence_of :period_end_date
  validates_presence_of :end_day_of_month
  validates_numericality_of :end_day_of_month, :allow_nil => false, :only_integer => true
  validates_presence_of :status_code
  validates_numericality_of :status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :duration
  validates_numericality_of :duration, :allow_nil => false
  validates_numericality_of :normalised_event_type_id, :allow_nil => true, :only_integer => true
  validates_length_of :c_party_name, :allow_nil => true, :maximum => 40
  validates_numericality_of :c_party_ton_code, :allow_nil => true, :only_integer => true
  validates_length_of :c_party_cell_id, :allow_nil => true, :maximum => 20
  validates_numericality_of :c_party_carrier_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :c_party_location_code, :allow_nil => true, :only_integer => true
  validates_length_of :c_party_route, :allow_nil => true, :maximum => 80
  validates_length_of :full_path, :allow_nil => true, :maximum => 40
  validates_numericality_of :cascade_carrier_code, :allow_nil => true, :only_integer => true
  validates_length_of :event_source, :allow_nil => true, :maximum => 40
  validates_numericality_of :event_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :event_sub_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :volume, :allow_nil => true
  validates_numericality_of :pulses, :allow_nil => true, :only_integer => true
  validates_numericality_of :charge, :allow_nil => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_length_of :rate_band, :allow_nil => true, :maximum => 40
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
end
