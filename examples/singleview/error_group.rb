class ErrorGroup < ActiveRecord::Base
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :module_name
  validates_length_of :module_name, :allow_nil => false, :maximum => 20
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :start_error_message_id
  validates_numericality_of :start_error_message_id, :allow_nil => false, :only_integer => true
  validates_presence_of :end_error_message_id
  validates_numericality_of :end_error_message_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
