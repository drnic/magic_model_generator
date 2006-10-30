class T2NationalNumberPlan < ActiveRecord::Base
  validates_presence_of :legal_entity
  validates_numericality_of :legal_entity, :allow_nil => false, :only_integer => true
  validates_presence_of :num_series_start
  validates_length_of :num_series_start, :allow_nil => false, :maximum => 64
  validates_presence_of :num_series_end
  validates_length_of :num_series_end, :allow_nil => false, :maximum => 64
end
