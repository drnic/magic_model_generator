class DilValidationT < ActiveRecord::Base
  belongs_to :schedule, :class_name => 'Schedule', :foreign_key => :schedule_id
  validates_presence_of :schedule_id
  validates_numericality_of :schedule_id, :allow_nil => false, :only_integer => true
  validates_presence_of :dil_specification
end
