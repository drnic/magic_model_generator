class Person < ActiveRecord::Base
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  has_many :atlanta_operators, :class_name => 'AtlantaOperator', :foreign_key => :person_id
  has_many :contract_histories, :class_name => 'ContractHistory', :foreign_key => :person_id
  has_many :customer_contacts, :class_name => 'CustomerContact', :foreign_key => :person_id
  has_many :customer_node_histories, :class_name => 'CustomerNodeHistory', :foreign_key => :person_id
  has_many :customer_node_inv_formats, :class_name => 'CustomerNodeInvFormat', :foreign_key => :person_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :person_id
  has_many :payments, :class_name => 'Payment', :foreign_key => :person_id
  has_many :people, :class_name => 'Person', :foreign_key => :person_id
  has_many :person_histories, :class_name => 'PersonHistory', :foreign_key => :person_id
  has_many :service_histories, :class_name => 'ServiceHistory', :foreign_key => :person_id
  has_many :atlanta_groups, :through => atlanta_operators
  has_many :atlanta_operators, :through => atlanta_operators
  has_many :atlanta_profiles, :through => atlanta_operators
  has_many :atlanta_groups, :through => contract_histories
  has_many :customer_nodes, :through => contract_histories
  has_many :contract_types, :through => contract_histories
  has_many :atlanta_operators, :through => contract_histories
  has_many :contracts, :through => contract_histories
  has_many :customer_nodes, :through => customer_contacts
  has_many :atlanta_groups, :through => customer_node_histories
  has_many :customer_nodes, :through => customer_node_histories
  has_many :currencies, :through => customer_node_histories
  has_many :atlanta_operators, :through => customer_node_histories
  has_many :customer_node_types, :through => customer_node_histories
  has_many :schedules, :through => customer_node_histories
  has_many :gl_codes, :through => customer_node_histories
  has_many :customer_nodes, :through => customer_node_inv_formats
  has_many :accounts, :through => customer_node_inv_formats
  has_many :invoice_formats, :through => customer_node_inv_formats
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :contracts, :through => customer_queries
  has_many :payment_types, :through => payments
  has_many :customer_nodes, :through => payments
  has_many :currencies, :through => payments
  has_many :invoices, :through => payments
  has_many :atlanta_operators, :through => payments
  has_many :payment_batches, :through => payments
  has_many :payments, :through => payments
  has_many :atlanta_groups, :through => person_histories
  has_many :atlanta_operators, :through => person_histories
  has_many :person_types, :through => person_histories
  has_many :customer_nodes, :through => service_histories
  has_many :atlanta_operators, :through => service_histories
  has_many :service_types, :through => service_histories
  has_many :services, :through => service_histories
  has_many :gl_codes, :through => service_histories
  has_many :contracts, :through => service_histories
  validates_presence_of :person_id
  validates_numericality_of :person_id, :allow_nil => false, :only_integer => true
end
