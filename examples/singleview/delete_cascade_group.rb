class DeleteCascadeGroup < ActiveRecord::Base
  belongs_to :delete_cascade_group, :class_name => 'DeleteCascadeGroup', :foreign_key => :delete_cascade_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :delete_cascades, :class_name => 'DeleteCascade', :foreign_key => :delete_cascade_group_id
  has_many :delete_cascade_groups, :class_name => 'DeleteCascadeGroup', :foreign_key => :delete_cascade_group_id
  has_many :atlanta_groups, :through => delete_cascade_groups
  has_many :atlanta_operators, :through => delete_cascade_groups
  validates_presence_of :delete_cascade_group_id
  validates_numericality_of :delete_cascade_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :delete_cascade_group_name
  validates_length_of :delete_cascade_group_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 4000
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
