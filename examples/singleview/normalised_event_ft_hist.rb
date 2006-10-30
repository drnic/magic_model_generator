class NormalisedEventFtHist < ActiveRecord::Base
  belongs_to :normalised_event_ft, :class_name => 'NormalisedEventFt', :foreign_key => :normalised_event_ft_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :dil, :class_name => 'Dil', :foreign_key => :dil_id
  belongs_to :expression_list, :class_name => 'ExpressionList', :foreign_key => :expression_list_id
  validates_presence_of :normalised_event_ft_id
  validates_numericality_of :normalised_event_ft_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :normalised_event_ft_name
  validates_length_of :normalised_event_ft_name, :allow_nil => false, :maximum => 40
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :dil_decode_ind_code
  validates_numericality_of :dil_decode_ind_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :decode_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :dil_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :expression_list_id, :allow_nil => true, :only_integer => true
end
