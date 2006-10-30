class Dil < ActiveRecord::Base
  belongs_to :dil, :class_name => 'Dil', :foreign_key => :dil_id
  has_many :dils, :class_name => 'Dil', :foreign_key => :dil_id
  has_many :dil_histories, :class_name => 'DilHistory', :foreign_key => :dil_id
  has_many :dil_references, :class_name => 'DilReference', :foreign_key => :dil_id
  has_many :dil_variables, :class_name => 'DilVariable', :foreign_key => :dil_id
  has_many :normalised_event_ft_hists, :class_name => 'NormalisedEventFtHist', :foreign_key => :dil_id
  has_many :atlanta_groups, :through => dil_histories
  has_many :atlanta_operators, :through => dil_histories
  has_many :variable_defns, :through => dil_variables
  has_many :atlanta_groups, :through => normalised_event_ft_hists
  has_many :atlanta_operators, :through => normalised_event_ft_hists
  has_many :normalised_event_fts, :through => normalised_event_ft_hists
  has_many :expression_lists, :through => normalised_event_ft_hists
  validates_presence_of :dil_id
  validates_numericality_of :dil_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
