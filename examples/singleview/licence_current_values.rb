class LicenceCurrentValues < ActiveRecord::Base
  validates_presence_of :last_modified
  validates_presence_of :customers
  validates_numericality_of :customers, :allow_nil => false, :only_integer => true
  validates_presence_of :customer_nodes
  validates_numericality_of :customer_nodes, :allow_nil => false, :only_integer => true
  validates_presence_of :services
  validates_numericality_of :services, :allow_nil => false, :only_integer => true
  validates_length_of :recalc_process_identifier, :allow_nil => true, :maximum => 80
  validates_presence_of :signature
  validates_length_of :signature, :allow_nil => false, :maximum => 256
end
