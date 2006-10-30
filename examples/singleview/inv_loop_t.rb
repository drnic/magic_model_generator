class InvLoopT < ActiveRecord::Base
  validates_presence_of :index_nr
  validates_numericality_of :index_nr, :allow_nil => false, :only_integer => true
end
