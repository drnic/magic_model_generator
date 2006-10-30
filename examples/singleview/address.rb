class Address < ActiveRecord::Base
  validates_presence_of :address_id
  validates_numericality_of :address_id, :allow_nil => false, :only_integer => true
  validates_presence_of :reference_count
  validates_numericality_of :reference_count, :allow_nil => false, :only_integer => true
  validates_presence_of :history_count
  validates_numericality_of :history_count, :allow_nil => false, :only_integer => true
end
