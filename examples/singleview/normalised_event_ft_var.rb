class NormalisedEventFtVar < ActiveRecord::Base
  belongs_to :normalised_event_ft, :class_name => 'NormalisedEventFt', :foreign_key => :normalised_event_ft_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  validates_presence_of :normalised_event_ft_id
  validates_numericality_of :normalised_event_ft_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
end
