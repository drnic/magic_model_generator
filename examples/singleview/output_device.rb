class OutputDevice < ActiveRecord::Base
  belongs_to :output_device, :class_name => 'OutputDevice', :foreign_key => :output_device_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :output_devices, :class_name => 'OutputDevice', :foreign_key => :output_device_id
  has_many :output_methods, :class_name => 'OutputMethod', :foreign_key => :output_device_id
  has_many :output_selects, :class_name => 'OutputSelect', :foreign_key => :output_device_id
  has_many :atlanta_groups, :through => output_devices
  has_many :atlanta_operators, :through => output_devices
  has_many :atlanta_groups, :through => output_methods
  has_many :atlanta_operators, :through => output_methods
  has_many :output_method_types, :through => output_methods
  has_many :output_methods, :through => output_methods
  has_many :output_methods, :through => output_selects
  validates_presence_of :output_device_id
  validates_numericality_of :output_device_id, :allow_nil => false, :only_integer => true
  validates_presence_of :output_device_name
  validates_length_of :output_device_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :output_image_type_code
  validates_numericality_of :output_image_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :run_command
  validates_length_of :run_command, :allow_nil => false, :maximum => 255
  validates_presence_of :pipe_ind_code
  validates_numericality_of :pipe_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :concatenate_ind_code
  validates_numericality_of :concatenate_ind_code, :allow_nil => false, :only_integer => true
  validates_length_of :start_command, :allow_nil => true, :maximum => 255
  validates_length_of :stop_command, :allow_nil => true, :maximum => 255
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
