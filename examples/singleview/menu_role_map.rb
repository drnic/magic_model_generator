class MenuRoleMap < ActiveRecord::Base
  belongs_to :atlanta_role, :class_name => 'AtlantaRole', :foreign_key => :atlanta_role_id
  validates_presence_of :atlanta_role_id
  validates_numericality_of :atlanta_role_id, :allow_nil => false, :only_integer => true
  validates_presence_of :menu_item_code
  validates_numericality_of :menu_item_code, :allow_nil => false, :only_integer => true
  validates_presence_of :access_level
  validates_numericality_of :access_level, :allow_nil => false, :only_integer => true
  validates_numericality_of :greyed_ind_code, :allow_nil => true, :only_integer => true
end
