class FacilityGroupHistory < ActiveRecord::Base
  belongs_to :facility_group, :class_name => 'FacilityGroup', :foreign_key => :facility_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  validates_presence_of :facility_group_id
  validates_numericality_of :facility_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :facility_group_name
  validates_length_of :facility_group_name, :allow_nil => false, :maximum => 60
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
end
