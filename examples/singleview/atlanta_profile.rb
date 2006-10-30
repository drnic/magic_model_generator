class AtlantaProfile < ActiveRecord::Base
  belongs_to :atlanta_profile, :class_name => 'AtlantaProfile', :foreign_key => :atlanta_profile_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :atlanta_operators, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_profile_id
  has_many :atlanta_profiles, :class_name => 'AtlantaProfile', :foreign_key => :atlanta_profile_id
  has_many :atlanta_profile_func_maps, :class_name => 'AtlantaProfileFuncMap', :foreign_key => :atlanta_profile_id
  has_many :atlanta_profile_group_maps, :class_name => 'AtlantaProfileGroupMap', :foreign_key => :atlanta_profile_id
  has_many :atlanta_profile_role_maps, :class_name => 'AtlantaProfileRoleMap', :foreign_key => :atlanta_profile_id
  has_many :atlanta_profile_wf_maps, :class_name => 'AtlantaProfileWfMap', :foreign_key => :atlanta_profile_id
  has_many :atlanta_groups, :through => atlanta_operators
  has_many :atlanta_operators, :through => atlanta_operators
  has_many :people, :through => atlanta_operators
  has_many :atlanta_groups, :through => atlanta_profiles
  has_many :atlanta_operators, :through => atlanta_profiles
  has_many :function_roles, :through => atlanta_profile_func_maps
  has_many :atlanta_groups, :through => atlanta_profile_group_maps
  has_many :atlanta_roles, :through => atlanta_profile_role_maps
  has_many :work_forces, :through => atlanta_profile_wf_maps
  validates_presence_of :atlanta_profile_id
  validates_numericality_of :atlanta_profile_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_profile_name
  validates_length_of :atlanta_profile_name, :allow_nil => false, :maximum => 30
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :primary_atlanta_group_id
  validates_numericality_of :primary_atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :max_adjustment_amount
  validates_numericality_of :max_adjustment_amount, :allow_nil => false
  validates_presence_of :adjustment_currency_id
  validates_numericality_of :adjustment_currency_id, :allow_nil => false, :only_integer => true
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
