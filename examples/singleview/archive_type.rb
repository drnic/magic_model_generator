class ArchiveType < ActiveRecord::Base
  belongs_to :archive_type, :class_name => 'ArchiveType', :foreign_key => :archive_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :archive_results, :class_name => 'ArchiveResult', :foreign_key => :archive_type_id
  has_many :archive_types, :class_name => 'ArchiveType', :foreign_key => :archive_type_id
  has_many :archive_type_table_lists, :class_name => 'ArchiveTypeTableList', :foreign_key => :archive_type_id
  has_many :task_queues, :through => archive_results
  has_many :archive_results, :through => archive_results
  has_many :atlanta_groups, :through => archive_types
  has_many :atlanta_operators, :through => archive_types
  validates_presence_of :archive_type_id
  validates_numericality_of :archive_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :archive_type_name
  validates_length_of :archive_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :date_ind_code
  validates_numericality_of :date_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :future_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :archive_subtype_ind_code
  validates_numericality_of :archive_subtype_ind_code, :allow_nil => false, :only_integer => true
  validates_length_of :base_table, :allow_nil => true, :maximum => 30
  validates_length_of :where_clause, :allow_nil => true, :maximum => 2000
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
