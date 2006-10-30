class IspEmailAddress < ActiveRecord::Base
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :isp_domain_code
  validates_numericality_of :isp_domain_code, :allow_nil => false, :only_integer => true
  validates_presence_of :email_address
  validates_length_of :email_address, :allow_nil => false, :maximum => 255
  validates_presence_of :destination_address
  validates_length_of :destination_address, :allow_nil => false, :maximum => 255
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
end
