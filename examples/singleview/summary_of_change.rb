class SummaryOfChange < ActiveRecord::Base
  belongs_to :summary_of_change_view, :class_name => 'SummaryOfChangeView', :foreign_key => :summary_of_change_view_id
  validates_presence_of :summary_of_change_view_id
  validates_numericality_of :summary_of_change_view_id, :allow_nil => false, :only_integer => true
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :display_seqnr
  validates_numericality_of :display_seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :data_type_code
  validates_numericality_of :data_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_presence_of :ev_column_name
  validates_length_of :ev_column_name, :allow_nil => false, :maximum => 30
  validates_presence_of :last_modified
  validates_length_of :default_group_label, :allow_nil => true, :maximum => 80
  validates_length_of :ev_group_control_column, :allow_nil => true, :maximum => 30
  validates_length_of :default_column_label, :allow_nil => true, :maximum => 80
  validates_numericality_of :detail_insert_message_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :detail_insert_append_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :detail_delete_message_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :detail_delete_append_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :detail_grp_update_message_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :detail_update_message_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :summary_insert_message_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :summary_insert_append_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :summary_delete_message_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :summary_delete_append_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :summary_grp_update_message_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :summary_update_message_id, :allow_nil => true, :only_integer => true
end
