class CustomerQuery < ActiveRecord::Base
  belongs_to :customer_query, :class_name => 'CustomerQuery', :foreign_key => :customer_query_id
  belongs_to :customer_query_type, :class_name => 'CustomerQueryType', :foreign_key => :customer_query_type_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  belongs_to :contract, :class_name => 'Contract', :foreign_key => :contract_id
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :invoice_id
  belongs_to :currency, :class_name => 'Currency', :foreign_key => :currency_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  has_many :adjustments, :class_name => 'Adjustment', :foreign_key => :customer_query_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :customer_query_id
  has_many :customer_query_progresses, :class_name => 'CustomerQueryProgress', :foreign_key => :customer_query_id
  has_many :t2_pay_statements, :class_name => 'T2PayStatement', :foreign_key => :customer_query_id
  has_many :currencies, :through => adjustments
  has_many :invoices, :through => adjustments
  has_many :adjustments, :through => adjustments
  has_many :atlanta_operators, :through => adjustments
  has_many :adjustment_types, :through => adjustments
  has_many :adjustment_batches, :through => adjustments
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :atlanta_operators, :through => customer_query_progresses
  has_many :work_forces, :through => customer_query_progresses
  has_many :customer_nodes, :through => t2_pay_statements
  has_many :task_queues, :through => t2_pay_statements
  has_many :t2_pay_statements, :through => t2_pay_statements
  has_many :payments, :through => t2_pay_statements
  validates_presence_of :customer_query_id
  validates_numericality_of :customer_query_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :customer_query_nr
  validates_length_of :customer_query_nr, :allow_nil => false, :maximum => 30
  validates_presence_of :customer_query_type_id
  validates_numericality_of :customer_query_type_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :customer_node_id, :allow_nil => true, :only_integer => true
  validates_presence_of :person_id
  validates_numericality_of :person_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :contract_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :service_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :invoice_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :amount, :allow_nil => true
  validates_numericality_of :currency_id, :allow_nil => true, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :query_status_code
  validates_numericality_of :query_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :query_resolution_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :query_work_force_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :progress_seqnr, :allow_nil => true, :only_integer => true
  validates_presence_of :open_date
  validates_presence_of :response_due_date
  validates_presence_of :next_callback_date
  validates_presence_of :resolution_due_date
  validates_length_of :query_text, :allow_nil => true, :maximum => 4000
  validates_length_of :resolution_text, :allow_nil => true, :maximum => 4000
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
end
