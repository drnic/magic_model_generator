class Equipment < ActiveRecord::Base
  belongs_to :equipment, :class_name => 'Equipment', :foreign_key => :equipment_id
  has_many :equipment, :class_name => 'Equipment', :foreign_key => :equipment_id
  has_many :equipment_histories, :class_name => 'EquipmentHistory', :foreign_key => :equipment_id
  has_many :product_instance_equips, :class_name => 'ProductInstanceEquip', :foreign_key => :equipment_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :equipment_id
  has_many :rpsi_ts, :class_name => 'RpsiT', :foreign_key => :equipment_id
  has_many :atlanta_groups, :through => equipment_histories
  has_many :atlanta_operators, :through => equipment_histories
  has_many :equipment_types, :through => equipment_histories
  has_many :product_service_types, :through => product_instance_equips
  has_many :product_instances, :through => product_instance_equips
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rpsi_ts
  has_many :task_queues, :through => rpsi_ts
  has_many :services, :through => rpsi_ts
  has_many :product_instances, :through => rpsi_ts
  validates_presence_of :equipment_id
  validates_numericality_of :equipment_id, :allow_nil => false, :only_integer => true
end
