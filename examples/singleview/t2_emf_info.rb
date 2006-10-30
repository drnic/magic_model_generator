class T2EmfInfo < ActiveRecord::Base
  validates_presence_of :ticket_number
  validates_numericality_of :ticket_number, :allow_nil => false, :only_integer => true
  validates_presence_of :install_date
  validates_presence_of :applier
  validates_length_of :applier, :allow_nil => false, :maximum => 16
  validates_presence_of :release_level
  validates_length_of :release_level, :allow_nil => false, :maximum => 32
  validates_presence_of :source_env
  validates_length_of :source_env, :allow_nil => false, :maximum => 8
  validates_length_of :ta_ticket, :allow_nil => true, :maximum => 16
end
