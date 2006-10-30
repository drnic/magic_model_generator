class SummaryOfChangeView < ActiveRecord::Base
  belongs_to :summary_of_change_view, :class_name => 'SummaryOfChangeView', :foreign_key => :summary_of_change_view_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  has_many :summary_of_changes, :class_name => 'SummaryOfChange', :foreign_key => :summary_of_change_view_id
  has_many :summary_of_change_evs, :class_name => 'SummaryOfChangeEv', :foreign_key => :summary_of_change_view_id
  has_many :summary_of_change_views, :class_name => 'SummaryOfChangeView', :foreign_key => :summary_of_change_view_id
  has_many :reference_types, :through => summary_of_change_evs
  has_many :atlanta_groups, :through => summary_of_change_views
  has_many :atlanta_operators, :through => summary_of_change_views
  validates_presence_of :summary_of_change_view_id
  validates_numericality_of :summary_of_change_view_id, :allow_nil => false, :only_integer => true
  validates_presence_of :summary_of_change_view_name
  validates_length_of :summary_of_change_view_name, :allow_nil => false, :maximum => 30
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
