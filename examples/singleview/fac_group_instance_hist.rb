class FacGroupInstanceHist < ActiveRecord::Base
  belongs_to :fac_group_instance, :class_name => 'FacGroupInstance', :foreign_key => :fac_group_instance_id
  belongs_to :facility_group, :class_name => 'FacilityGroup', :foreign_key => :facility_group_id
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  validates_presence_of :fac_group_instance_id
  validates_numericality_of :fac_group_instance_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :facility_group_id
  validates_numericality_of :facility_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :fac_group_instance_status_code
  validates_numericality_of :fac_group_instance_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
end
