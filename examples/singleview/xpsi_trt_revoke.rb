class XpsiTrtRevoke < ActiveRecord::Base
  belongs_to :adjustment, :class_name => 'Adjustment', :foreign_key => :adjustment_id
  validates_presence_of :task_id
  validates_numericality_of :task_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_date
  validates_presence_of :cq_customer_query_id
  validates_numericality_of :cq_customer_query_id, :allow_nil => false, :only_integer => true
  validates_presence_of :qp_progress_seqnr
  validates_numericality_of :qp_progress_seqnr, :allow_nil => false, :only_integer => true
  validates_length_of :revoke_function, :allow_nil => true, :maximum => 255
  validates_numericality_of :letter_type, :allow_nil => true, :only_integer => true
  validates_length_of :products_suspended, :allow_nil => true, :maximum => 255
  validates_numericality_of :adjustment_id, :allow_nil => true, :only_integer => true
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
  validates_presence_of :cq_last_modified
  validates_numericality_of :cq_customer_node_id, :allow_nil => true, :only_integer => true
  validates_presence_of :cq_atlanta_group_id
  validates_numericality_of :cq_atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :cq_atlanta_operator_id
  validates_numericality_of :cq_atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :cq_query_status_code
  validates_numericality_of :cq_query_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :cq_query_resolution_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :cq_query_work_force_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :cq_progress_seqnr, :allow_nil => true, :only_integer => true
  validates_presence_of :cq_open_date
  validates_presence_of :cq_response_due_date
  validates_presence_of :cq_next_callback_date
  validates_presence_of :cq_resolution_due_date
  validates_length_of :cq_query_text, :allow_nil => true, :maximum => 2000
  validates_length_of :cq_resolution_text, :allow_nil => true, :maximum => 2000
  validates_length_of :cq_general_1, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_2, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_3, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_4, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_5, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_6, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_7, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_8, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_9, :allow_nil => true, :maximum => 255
  validates_length_of :cq_general_10, :allow_nil => true, :maximum => 255
  validates_presence_of :qp_last_modified
  validates_numericality_of :qp_open_query_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :qp_work_force_id
  validates_numericality_of :qp_work_force_id, :allow_nil => false, :only_integer => true
  validates_presence_of :qp_open_date
  validates_presence_of :qp_response_due_date
  validates_length_of :qp_progress_text, :allow_nil => true, :maximum => 2000
  validates_length_of :qp_action_text, :allow_nil => true, :maximum => 2000
  validates_presence_of :qp_atlanta_operator_id
  validates_numericality_of :qp_atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_length_of :qp_resolution_text, :allow_nil => true, :maximum => 2000
  validates_length_of :cda_index1_value, :allow_nil => true, :maximum => 255
  validates_length_of :cda_result1_value, :allow_nil => true, :maximum => 255
  validates_length_of :cda_result2_value, :allow_nil => true, :maximum => 255
  validates_length_of :cda_result3_value, :allow_nil => true, :maximum => 255
  validates_length_of :cda_result4_value, :allow_nil => true, :maximum => 255
  validates_length_of :cda_result5_value, :allow_nil => true, :maximum => 255
end
