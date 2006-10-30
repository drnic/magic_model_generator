class CustomerQueryProgress < ActiveRecord::Base
  belongs_to :customer_query, :class_name => 'CustomerQuery', :foreign_key => :customer_query_id
  belongs_to :work_force, :class_name => 'WorkForce', :foreign_key => :work_force_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  validates_presence_of :customer_query_id
  validates_numericality_of :customer_query_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :progress_seqnr
  validates_numericality_of :progress_seqnr, :allow_nil => false, :only_integer => true
  validates_numericality_of :open_query_ind_code, :allow_nil => true, :only_integer => true
  validates_presence_of :work_force_id
  validates_numericality_of :work_force_id, :allow_nil => false, :only_integer => true
  validates_presence_of :open_date
  validates_presence_of :response_due_date
  validates_length_of :progress_text, :allow_nil => true, :maximum => 4000
  validates_length_of :action_text, :allow_nil => true, :maximum => 4000
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_length_of :resolution_text, :allow_nil => true, :maximum => 4000
end
