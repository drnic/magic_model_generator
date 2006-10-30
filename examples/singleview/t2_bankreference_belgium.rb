class T2BankreferenceBelgium < ActiveRecord::Base
  validates_presence_of :last_update
  validates_length_of :bank_code, :allow_nil => true, :maximum => 48
  validates_length_of :bank_name, :allow_nil => true, :maximum => 255
  validates_length_of :authorization_bank_code, :allow_nil => true, :maximum => 48
end
