class EvtEquipmentChangeover < ActiveRecord::Base
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  validates_presence_of :equipment_number
  validates_length_of :equipment_number, :allow_nil => false, :maximum => 40
  validates_presence_of :changeover_date
  validates_presence_of :changeover_type
  validates_numericality_of :changeover_type, :allow_nil => false, :only_integer => true
  validates_numericality_of :service_id, :allow_nil => true, :only_integer => true
end
