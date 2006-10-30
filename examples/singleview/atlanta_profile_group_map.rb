class AtlantaProfileGroupMap < ActiveRecord::Base
  belongs_to :atlanta_profile, :class_name => 'AtlantaProfile', :foreign_key => :atlanta_profile_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :atlanta_profile_id
  validates_numericality_of :atlanta_profile_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :access_level
  validates_numericality_of :access_level, :allow_nil => false, :only_integer => true
end
