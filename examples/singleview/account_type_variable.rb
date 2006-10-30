class AccountTypeVariable < ActiveRecord::Base
  belongs_to :account_type, :class_name => 'AccountType', :foreign_key => :account_type_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  validates_presence_of :account_type_id
  validates_numericality_of :account_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
end
