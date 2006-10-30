class XpsiProductStatus < ActiveRecord::Base
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_date
  validates_presence_of :entity_type
  validates_length_of :entity_type, :allow_nil => false, :maximum => 255
  validates_presence_of :entity_id
  validates_numericality_of :entity_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :svcda_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :seq_nr, :allow_nil => true, :only_integer => true
  validates_presence_of :entity_status
  validates_numericality_of :entity_status, :allow_nil => false, :only_integer => true
end
