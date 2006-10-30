class XpsiUpdateCapture < ActiveRecord::Base
  belongs_to :xpsi_update_capture, :class_name => 'XpsiUpdateCapture', :foreign_key => :xpsi_update_capture_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  has_many :xpsi_update_captures, :class_name => 'XpsiUpdateCapture', :foreign_key => :xpsi_update_capture_id
  has_many :task_queues, :through => xpsi_update_captures
  validates_presence_of :xpsi_update_capture_id
  validates_numericality_of :xpsi_update_capture_id, :allow_nil => false, :only_integer => true
  validates_presence_of :capture_type_code
  validates_numericality_of :capture_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_extract_date
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_numericality_of :task_queue_id, :allow_nil => true, :only_integer => true
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
  validates_length_of :general_11, :allow_nil => true, :maximum => 255
  validates_length_of :general_12, :allow_nil => true, :maximum => 255
  validates_length_of :general_13, :allow_nil => true, :maximum => 255
  validates_length_of :general_14, :allow_nil => true, :maximum => 255
  validates_length_of :general_15, :allow_nil => true, :maximum => 255
  validates_length_of :general_16, :allow_nil => true, :maximum => 255
  validates_length_of :general_17, :allow_nil => true, :maximum => 255
  validates_length_of :general_18, :allow_nil => true, :maximum => 255
  validates_length_of :general_19, :allow_nil => true, :maximum => 255
  validates_length_of :general_20, :allow_nil => true, :maximum => 255
end
