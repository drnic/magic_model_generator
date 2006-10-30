class AddressHistory < ActiveRecord::Base
  validates_presence_of :address_id
  validates_numericality_of :address_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_length_of :line_1, :allow_nil => true, :maximum => 80
  validates_length_of :line_2, :allow_nil => true, :maximum => 80
  validates_length_of :suburb, :allow_nil => true, :maximum => 80
  validates_length_of :city, :allow_nil => true, :maximum => 80
  validates_length_of :post_code, :allow_nil => true, :maximum => 10
  validates_length_of :state, :allow_nil => true, :maximum => 80
  validates_length_of :country, :allow_nil => true, :maximum => 80
  validates_length_of :geocode, :allow_nil => true, :maximum => 80
  validates_numericality_of :xpos, :allow_nil => true
  validates_numericality_of :ypos, :allow_nil => true
  validates_numericality_of :zpos, :allow_nil => true
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
