class T2AnumberSwitzerland < ActiveRecord::Base
  validates_presence_of :service_name
  validates_length_of :service_name, :allow_nil => false, :maximum => 64
  validates_presence_of :customer_node_type_name
  validates_length_of :customer_node_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :familycompanyname
  validates_length_of :familycompanyname, :allow_nil => false, :maximum => 120
  validates_length_of :given_names, :allow_nil => true, :maximum => 80
  validates_numericality_of :gender_code, :allow_nil => true, :only_integer => true
  validates_length_of :title, :allow_nil => true, :maximum => 60
  validates_presence_of :language_code
  validates_numericality_of :language_code, :allow_nil => false, :only_integer => true
  validates_length_of :addresstext, :allow_nil => true, :maximum => 240
  validates_presence_of :post_code
  validates_length_of :post_code, :allow_nil => false, :maximum => 10
  validates_presence_of :city
  validates_length_of :city, :allow_nil => false, :maximum => 80
  validates_length_of :state, :allow_nil => true, :maximum => 80
  validates_presence_of :country
  validates_length_of :country, :allow_nil => false, :maximum => 80
  validates_presence_of :last_update
  validates_length_of :identification_number, :allow_nil => true, :maximum => 16
  validates_length_of :vat_number, :allow_nil => true, :maximum => 11
end
