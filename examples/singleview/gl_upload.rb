class GlUpload < ActiveRecord::Base
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
end
