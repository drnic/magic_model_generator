class CustomerContact < ActiveRecord::Base
  belongs_to :customer_node, :class_name => 'CustomerNode', :foreign_key => :customer_node_id
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  validates_presence_of :customer_node_id
  validates_numericality_of :customer_node_id, :allow_nil => false, :only_integer => true
  validates_presence_of :person_id
  validates_numericality_of :person_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_numericality_of :customer_contact_code, :allow_nil => true, :only_integer => true
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
