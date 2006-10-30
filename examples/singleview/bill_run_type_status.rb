class BillRunTypeStatus < ActiveRecord::Base
  belongs_to :bill_run_type, :class_name => 'BillRunType', :foreign_key => :bill_run_type_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  validates_presence_of :bill_run_type_id
  validates_numericality_of :bill_run_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :summary_status_code
  validates_numericality_of :summary_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_numericality_of :icon_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :foreground_colour, :allow_nil => true, :only_integer => true
  validates_numericality_of :background_colour, :allow_nil => true, :only_integer => true
end
