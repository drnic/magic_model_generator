class OutputMethodType < ActiveRecord::Base
  belongs_to :output_method_type, :class_name => 'OutputMethodType', :foreign_key => :output_method_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :output_methods, :class_name => 'OutputMethod', :foreign_key => :output_method_type_id
  has_many :output_method_types, :class_name => 'OutputMethodType', :foreign_key => :output_method_type_id
  has_many :atlanta_groups, :through => output_methods
  has_many :atlanta_operators, :through => output_methods
  has_many :output_methods, :through => output_methods
  has_many :output_devices, :through => output_methods
  has_many :atlanta_groups, :through => output_method_types
  has_many :atlanta_operators, :through => output_method_types
  validates_presence_of :output_method_type_id
  validates_numericality_of :output_method_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :output_method_type_name
  validates_length_of :output_method_type_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :output_image_type_code
  validates_numericality_of :output_image_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :query_view_name
  validates_length_of :query_view_name, :allow_nil => false, :maximum => 30
  validates_presence_of :output_image_view_name
  validates_length_of :output_image_view_name, :allow_nil => false, :maximum => 30
  validates_presence_of :output_image_column_name
  validates_length_of :output_image_column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :output_image_where_clause
  validates_length_of :output_image_where_clause, :allow_nil => false, :maximum => 2000
  validates_length_of :update_table_name, :allow_nil => true, :maximum => 30
  validates_length_of :update_set_clause, :allow_nil => true, :maximum => 255
  validates_length_of :update_where_clause, :allow_nil => true, :maximum => 255
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
