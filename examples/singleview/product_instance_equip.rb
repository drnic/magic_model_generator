class ProductInstanceEquip < ActiveRecord::Base
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  belongs_to :product_service_type, :class_name => 'ProductServiceType', :foreign_key => :product_service_type_id
  belongs_to :equipment, :class_name => 'Equipment', :foreign_key => :equipment_id
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :product_service_type_id
  validates_numericality_of :product_service_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :service_item_seqnr
  validates_numericality_of :service_item_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :service_range_seqnr
  validates_numericality_of :service_range_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :equipment_item_seqnr
  validates_numericality_of :equipment_item_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :equipment_range_seqnr
  validates_numericality_of :equipment_range_seqnr, :allow_nil => false, :only_integer => true
  validates_numericality_of :equipment_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :uncompleted_ind_code, :allow_nil => true, :only_integer => true
end
