class T2ZipcodePortugal < ActiveRecord::Base
  validates_presence_of :post_code
  validates_length_of :post_code, :allow_nil => false, :maximum => 10
  validates_length_of :city, :allow_nil => true, :maximum => 80
  validates_length_of :state, :allow_nil => true, :maximum => 80
  validates_length_of :country, :allow_nil => true, :maximum => 80
  validates_presence_of :last_update
  validates_length_of :council, :allow_nil => true, :maximum => 80
end
