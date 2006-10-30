class ServiceTypeEquipType < ActiveRecord::Base
  belongs_to :service_type, :class_name => 'ServiceType', :foreign_key => :service_type_id
  belongs_to :equipment_type, :class_name => 'EquipmentType', :foreign_key => :equipment_type_id
  validates_presence_of :service_type_id
  validates_numericality_of :service_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :equipment_item_seqnr
  validates_numericality_of :equipment_item_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :equipment_type_id
  validates_numericality_of :equipment_type_id, :allow_nil => false, :only_integer => true
end
