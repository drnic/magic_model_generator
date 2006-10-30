class WorkForce < ActiveRecord::Base
  belongs_to :work_force, :class_name => 'WorkForce', :foreign_key => :work_force_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atlanta_profile_wf_maps, :class_name => 'AtlantaProfileWfMap', :foreign_key => :work_force_id
  has_many :customer_query_progresses, :class_name => 'CustomerQueryProgress', :foreign_key => :work_force_id
  has_many :work_forces, :class_name => 'WorkForce', :foreign_key => :work_force_id
  has_many :atlanta_profiles, :through => atlanta_profile_wf_maps
  has_many :customer_queries, :through => customer_query_progresses
  has_many :atlanta_operators, :through => customer_query_progresses
  has_many :atlanta_groups, :through => work_forces
  has_many :atlanta_operators, :through => work_forces
  validates_presence_of :work_force_id
  validates_numericality_of :work_force_id, :allow_nil => false, :only_integer => true
  validates_presence_of :work_force_name
  validates_length_of :work_force_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
