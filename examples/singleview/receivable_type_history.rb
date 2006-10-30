class ReceivableTypeHistory < ActiveRecord::Base
  belongs_to :receivable_type, :class_name => 'ReceivableType', :foreign_key => :receivable_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  belongs_to :account, :class_name => 'Account', :foreign_key => :account_id
  validates_presence_of :receivable_type_id
  validates_numericality_of :receivable_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :receivable_type_name
  validates_length_of :receivable_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 2000
  validates_presence_of :priority
  validates_numericality_of :priority, :allow_nil => false, :only_integer => true
  validates_numericality_of :gl_code_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :account_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :default_ind_code, :allow_nil => true, :only_integer => true
end
