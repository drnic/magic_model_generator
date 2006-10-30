class ProductServiceTypeEquip < ActiveRecord::Base
  belongs_to :product_service_type, :class_name => 'ProductServiceType', :foreign_key => :product_service_type_id
  belongs_to :equipment_type, :class_name => 'EquipmentType', :foreign_key => :equipment_type_id
  validates_presence_of :product_service_type_id
  validates_numericality_of :product_service_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :equipment_item_seqnr
  validates_numericality_of :equipment_item_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :creation_order
  validates_numericality_of :creation_order, :allow_nil => false, :only_integer => true
  validates_numericality_of :equipment_range_min, :allow_nil => true, :only_integer => true
  validates_numericality_of :equipment_range_max, :allow_nil => true, :only_integer => true
  validates_presence_of :equipment_type_id
  validates_numericality_of :equipment_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :initial_equipment_status_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :search_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_rows_displayed, :allow_nil => true, :only_integer => true
end
