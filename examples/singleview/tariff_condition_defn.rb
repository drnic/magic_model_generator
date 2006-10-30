class TariffConditionDefn < ActiveRecord::Base
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  belongs_to :attribute_type, :class_name => 'AttributeType', :foreign_key => :attribute_type_id
  validates_presence_of :tariff_id
  validates_numericality_of :tariff_id, :allow_nil => false, :only_integer => true
  validates_presence_of :condition_nr
  validates_numericality_of :condition_nr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :prompt
  validates_length_of :prompt, :allow_nil => false, :maximum => 30
  validates_presence_of :width
  validates_numericality_of :width, :allow_nil => false, :only_integer => true
  validates_length_of :conditional_expr, :allow_nil => true, :maximum => 255
  validates_numericality_of :attribute_type_id, :allow_nil => true, :only_integer => true
end
