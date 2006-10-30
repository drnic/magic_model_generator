class Contract < ActiveRecord::Base
  belongs_to :contract, :class_name => 'Contract', :foreign_key => :contract_id
  has_many :contracts, :class_name => 'Contract', :foreign_key => :contract_id
  has_many :contract_histories, :class_name => 'ContractHistory', :foreign_key => :contract_id
  has_many :customer_queries, :class_name => 'CustomerQuery', :foreign_key => :contract_id
  has_many :product_instance_histories, :class_name => 'ProductInstanceHistory', :foreign_key => :contract_id
  has_many :service_histories, :class_name => 'ServiceHistory', :foreign_key => :contract_id
  has_many :atlanta_groups, :through => contract_histories
  has_many :customer_nodes, :through => contract_histories
  has_many :contract_types, :through => contract_histories
  has_many :atlanta_operators, :through => contract_histories
  has_many :people, :through => contract_histories
  has_many :atlanta_groups, :through => customer_queries
  has_many :customer_nodes, :through => customer_queries
  has_many :customer_query_types, :through => customer_queries
  has_many :customer_queries, :through => customer_queries
  has_many :currencies, :through => customer_queries
  has_many :invoices, :through => customer_queries
  has_many :accounts, :through => customer_queries
  has_many :atlanta_operators, :through => customer_queries
  has_many :services, :through => customer_queries
  has_many :people, :through => customer_queries
  has_many :customer_nodes, :through => product_instance_histories
  has_many :atlanta_operators, :through => product_instance_histories
  has_many :products, :through => product_instance_histories
  has_many :product_instances, :through => product_instance_histories
  has_many :customer_nodes, :through => service_histories
  has_many :atlanta_operators, :through => service_histories
  has_many :service_types, :through => service_histories
  has_many :services, :through => service_histories
  has_many :gl_codes, :through => service_histories
  has_many :people, :through => service_histories
  validates_presence_of :contract_id
  validates_numericality_of :contract_id, :allow_nil => false, :only_integer => true
end
