class XpsiAddrValMsag < ActiveRecord::Base
  validates_presence_of :street_name_uppercase
  validates_length_of :street_name_uppercase, :allow_nil => false, :maximum => 48
  validates_presence_of :community_name_uppercase
  validates_length_of :community_name_uppercase, :allow_nil => false, :maximum => 32
  validates_presence_of :state_abbrev
  validates_length_of :state_abbrev, :allow_nil => false, :maximum => 2
  validates_presence_of :low_number
  validates_length_of :low_number, :allow_nil => false, :maximum => 8
  validates_presence_of :high_number
  validates_length_of :high_number, :allow_nil => false, :maximum => 8
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_length_of :prefix_dir, :allow_nil => true, :maximum => 2
  validates_length_of :postfix_dir, :allow_nil => true, :maximum => 2
  validates_presence_of :street_name
  validates_length_of :street_name, :allow_nil => false, :maximum => 48
  validates_length_of :street_suffix, :allow_nil => true, :maximum => 8
  validates_length_of :odd_even_ind, :allow_nil => true, :maximum => 1
  validates_presence_of :community_name
  validates_length_of :community_name, :allow_nil => false, :maximum => 32
  validates_length_of :esn, :allow_nil => true, :maximum => 5
  validates_length_of :exchange, :allow_nil => true, :maximum => 4
end
