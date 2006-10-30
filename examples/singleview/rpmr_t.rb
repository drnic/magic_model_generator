class RpmrT < ActiveRecord::Base
  belongs_to :task_queue, :class_name => 'TaskQueue', :foreign_key => :task_queue_id
  validates_presence_of :task_queue_id
  validates_numericality_of :task_queue_id, :allow_nil => false, :only_integer => true
  validates_presence_of :process_id
  validates_numericality_of :process_id, :allow_nil => false, :only_integer => true
  validates_presence_of :profile_id
  validates_numericality_of :profile_id, :allow_nil => false, :only_integer => true
  validates_presence_of :profile_name
  validates_length_of :profile_name, :allow_nil => false, :maximum => 30
  validates_length_of :profile_description, :allow_nil => true, :maximum => 255
  validates_presence_of :max_adjust_amount
  validates_numericality_of :max_adjust_amount, :allow_nil => false
  validates_presence_of :adjust_currency_id
  validates_numericality_of :adjust_currency_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :primary_group_name
  validates_length_of :primary_group_name, :allow_nil => false, :maximum => 30
  validates_presence_of :group_id
  validates_numericality_of :group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :group_name
  validates_length_of :group_name, :allow_nil => false, :maximum => 30
  validates_presence_of :group_access_level
  validates_numericality_of :group_access_level, :allow_nil => false, :only_integer => true
  validates_presence_of :currency_symbol
  validates_length_of :currency_symbol, :allow_nil => false, :maximum => 5
end
