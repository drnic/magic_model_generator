class OutputSelect < ActiveRecord::Base
  belongs_to :output_method, :class_name => 'OutputMethod', :foreign_key => :output_method_id
  belongs_to :output_device, :class_name => 'OutputDevice', :foreign_key => :output_device_id
  validates_presence_of :output_method_id
  validates_numericality_of :output_method_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :last_modified
  validates_presence_of :where_clause
  validates_length_of :where_clause, :allow_nil => false, :maximum => 2000
  validates_presence_of :output_device_id
  validates_numericality_of :output_device_id, :allow_nil => false, :only_integer => true
  validates_presence_of :order_by_clause
  validates_length_of :order_by_clause, :allow_nil => false, :maximum => 255
end
