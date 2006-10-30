class NormalisedEventFt < ActiveRecord::Base
  belongs_to :normalised_event_ft, :class_name => 'NormalisedEventFt', :foreign_key => :normalised_event_ft_id
  has_many :normalised_event_files, :class_name => 'NormalisedEventFile', :foreign_key => :normalised_event_ft_id
  has_many :normalised_event_fts, :class_name => 'NormalisedEventFt', :foreign_key => :normalised_event_ft_id
  has_many :normalised_event_ft_hists, :class_name => 'NormalisedEventFtHist', :foreign_key => :normalised_event_ft_id
  has_many :normalised_event_ft_vars, :class_name => 'NormalisedEventFtVar', :foreign_key => :normalised_event_ft_id
  has_many :task_queues, :through => normalised_event_files
  has_many :atlanta_operators, :through => normalised_event_files
  has_many :normalised_event_files, :through => normalised_event_files
  has_many :atlanta_groups, :through => normalised_event_ft_hists
  has_many :atlanta_operators, :through => normalised_event_ft_hists
  has_many :dils, :through => normalised_event_ft_hists
  has_many :expression_lists, :through => normalised_event_ft_hists
  has_many :variable_defns, :through => normalised_event_ft_vars
  validates_presence_of :normalised_event_ft_id
  validates_numericality_of :normalised_event_ft_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
