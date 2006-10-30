class DilReference < ActiveRecord::Base
  belongs_to :dil, :class_name => 'Dil', :foreign_key => :dil_id
  validates_presence_of :dil_id
  validates_numericality_of :dil_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :referenced_dil_id
  validates_numericality_of :referenced_dil_id, :allow_nil => false, :only_integer => true
end
