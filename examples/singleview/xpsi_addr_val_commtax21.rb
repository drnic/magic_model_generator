class XpsiAddrValCommtax21 < ActiveRecord::Base
  validates_presence_of :state_abbrev
  validates_length_of :state_abbrev, :allow_nil => false, :maximum => 2
  validates_presence_of :county_name_uppercase
  validates_length_of :county_name_uppercase, :allow_nil => false, :maximum => 15
  validates_presence_of :city_name_uppercase
  validates_length_of :city_name_uppercase, :allow_nil => false, :maximum => 25
  validates_presence_of :zip_begin
  validates_length_of :zip_begin, :allow_nil => false, :maximum => 5
  validates_presence_of :zip_end
  validates_length_of :zip_end, :allow_nil => false, :maximum => 5
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :geocode
  validates_length_of :geocode, :allow_nil => false, :maximum => 12
  validates_presence_of :authority_code
  validates_numericality_of :authority_code, :allow_nil => false, :only_integer => true
  validates_presence_of :state_name
  validates_length_of :state_name, :allow_nil => false, :maximum => 20
  validates_presence_of :county_name
  validates_length_of :county_name, :allow_nil => false, :maximum => 15
  validates_presence_of :city_name
  validates_length_of :city_name, :allow_nil => false, :maximum => 25
end
