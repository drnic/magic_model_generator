class RacrClecT1 < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :account_id
  validates_numericality_of :account_id, :allow_nil => false, :only_integer => true
  validates_presence_of :opening_balance
  validates_numericality_of :opening_balance, :allow_nil => false
end
