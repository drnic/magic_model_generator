class ContractHistory < ActiveRecord::Base
  belongs_to :contract, :class_name => 'Contract', :foreign_key => :contract_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :contract_type, :class_name => 'ContractType', :foreign_key => :contract_type_id
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  validates_presence_of :contract_id
  validates_numericality_of :contract_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :contract_name
  validates_length_of :contract_name, :allow_nil => false, :maximum => 40
  validates_length_of :customer_reference, :allow_nil => true, :maximum => 40
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :contract_type_id
  validates_numericality_of :contract_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :person_id
  validates_numericality_of :person_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :account_manager_operator_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :assigned_csr_operator_id, :allow_nil => true, :only_integer => true
  validates_presence_of :contract_status_code
  validates_numericality_of :contract_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :contract_duration, :allow_nil => true, :only_integer => true
  validates_numericality_of :contract_duration_unit_code, :allow_nil => true, :only_integer => true
  validates_length_of :comments, :allow_nil => true, :maximum => 2000
  validates_length_of :overidden_contracts, :allow_nil => true, :maximum => 2000
  validates_length_of :related_documents, :allow_nil => true, :maximum => 2000
  validates_numericality_of :sales_channel_code, :allow_nil => true, :only_integer => true
  validates_presence_of :select_all_ind_code
  validates_numericality_of :select_all_ind_code, :allow_nil => false, :only_integer => true
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
