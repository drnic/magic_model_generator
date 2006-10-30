class SummaryOfChangeEv < ActiveRecord::Base
  belongs_to :summary_of_change_view, :class_name => 'SummaryOfChangeView', :foreign_key => :summary_of_change_view_id
  belongs_to :reference_type, :class_name => 'ReferenceType', :foreign_key => :reference_type_id
  validates_presence_of :summary_of_change_view_id
  validates_numericality_of :summary_of_change_view_id, :allow_nil => false, :only_integer => true
  validates_presence_of :type_id
  validates_numericality_of :type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :last_modified
  validates_presence_of :visible_ind_code
  validates_numericality_of :visible_ind_code, :allow_nil => false, :only_integer => true
  validates_length_of :group_label, :allow_nil => true, :maximum => 80
  validates_length_of :column_label, :allow_nil => true, :maximum => 80
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :reference_type_id, :allow_nil => true, :only_integer => true
end
