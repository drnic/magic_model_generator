class DeleteCascade < ActiveRecord::Base
  belongs_to :delete_cascade_group, :class_name => 'DeleteCascadeGroup', :foreign_key => :delete_cascade_group_id
  validates_presence_of :delete_cascade_group_id
  validates_numericality_of :delete_cascade_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :foreign_constraint_name
  validates_length_of :foreign_constraint_name, :allow_nil => false, :maximum => 30
  validates_presence_of :entity_name
  validates_length_of :entity_name, :allow_nil => false, :maximum => 30
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
end
