class ProductServiceType < ActiveRecord::Base
  belongs_to :product_service_type, :class_name => 'ProductServiceType', :foreign_key => :product_service_type_id
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :service_type, :class_name => 'ServiceType', :foreign_key => :service_type_id
  has_many :product_instance_equips, :class_name => 'ProductInstanceEquip', :foreign_key => :product_service_type_id
  has_many :product_service_types, :class_name => 'ProductServiceType', :foreign_key => :product_service_type_id
  has_many :product_service_type_equips, :class_name => 'ProductServiceTypeEquip', :foreign_key => :product_service_type_id
  has_many :equipment, :through => product_instance_equips
  has_many :product_instances, :through => product_instance_equips
  has_many :service_types, :through => product_service_types
  has_many :products, :through => product_service_types
  has_many :equipment_types, :through => product_service_type_equips
  validates_presence_of :product_service_type_id
  validates_numericality_of :product_service_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :service_item_seqnr
  validates_numericality_of :service_item_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :creation_order
  validates_numericality_of :creation_order, :allow_nil => false, :only_integer => true
  validates_numericality_of :service_range_min, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_range_max, :allow_nil => true, :only_integer => true
  validates_presence_of :service_type_id
  validates_numericality_of :service_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :initial_service_status_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_name_equipment_co, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_name_serialnr_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :network_name_equipment_co, :allow_nil => true, :only_integer => true
  validates_numericality_of :network_name_serialnr_ind_code, :allow_nil => true, :only_integer => true
end
