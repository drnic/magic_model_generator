class EvsAddressEquiv < ActiveRecord::Base
  belongs_to :evs_address_equiv, :class_name => 'EvsAddressEquiv', :foreign_key => :evs_address_equiv_id
  has_many :evs_address_equivs, :class_name => 'EvsAddressEquiv', :foreign_key => :evs_address_equiv_id
  validates_presence_of :evs_address_equiv_id
  validates_numericality_of :evs_address_equiv_id, :allow_nil => false, :only_integer => true
  validates_presence_of :prefix
  validates_length_of :prefix, :allow_nil => false, :maximum => 10
  validates_presence_of :parent_view
  validates_length_of :parent_view, :allow_nil => false, :maximum => 40
  validates_presence_of :offset
  validates_numericality_of :offset, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :operator_id
  validates_numericality_of :operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :group_id
  validates_numericality_of :group_id, :allow_nil => false, :only_integer => true
end
