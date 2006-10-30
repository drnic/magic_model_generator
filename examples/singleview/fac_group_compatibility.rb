class FacGroupCompatibility < ActiveRecord::Base
  belongs_to :facility_group, :class_name => 'FacilityGroup', :foreign_key => :facility_group_id
  validates_presence_of :facility_group_id
  validates_numericality_of :facility_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :compatible_facility_group_id
  validates_numericality_of :compatible_facility_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
end
