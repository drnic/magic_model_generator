class CustomerQueryType < ActiveRecord::Base
  belongs_to :customer_query_type, :class_name => 'CustomerQueryType', :foreign_key => :customer_query_type_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :customer_query_type_id
  has_many :customer_query_types, :class_name => 'CustomerQueryType', :foreign_key => :customer_query_type_id
  has_many :customer_query_type_vars, :class_name => 'CustomerQueryTypeVar', :foreign_key => :customer_query_type_id
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :atlanta_groups, :through => customer_query_types
  has_many :icons, :through => customer_query_types
  has_many :atlanta_operators, :through => customer_query_types
  has_many :variable_defns, :through => customer_query_type_vars
  validates_presence_of :customer_query_type_id
  validates_numericality_of :customer_query_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :customer_query_type_name
  validates_length_of :customer_query_type_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_query_format_expr
  validates_length_of :customer_query_format_expr, :allow_nil => false, :maximum => 255
  validates_length_of :default_response_time, :allow_nil => true, :maximum => 8
  validates_length_of :default_resolution_time, :allow_nil => true, :maximum => 8
  validates_numericality_of :default_work_force_id, :allow_nil => true, :only_integer => true
  validates_length_of :operator_help_txt, :allow_nil => true, :maximum => 2000
  validates_numericality_of :query_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :progress_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :person_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :customer_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :account_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
