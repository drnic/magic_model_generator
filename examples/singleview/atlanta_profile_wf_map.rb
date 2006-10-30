class AtlantaProfileWfMap < ActiveRecord::Base
  belongs_to :atlanta_profile, :class_name => 'AtlantaProfile', :foreign_key => :atlanta_profile_id
  belongs_to :work_force, :class_name => 'WorkForce', :foreign_key => :work_force_id
  validates_presence_of :atlanta_profile_id
  validates_numericality_of :atlanta_profile_id, :allow_nil => false, :only_integer => true
  validates_presence_of :work_force_id
  validates_numericality_of :work_force_id, :allow_nil => false, :only_integer => true
  validates_presence_of :access_level
  validates_numericality_of :access_level, :allow_nil => false, :only_integer => true
end
