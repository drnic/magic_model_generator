class ExpressionListValue < ActiveRecord::Base
  belongs_to :expression_list_value, :class_name => 'ExpressionListValue', :foreign_key => :expression_list_value_id
  belongs_to :expression_list, :class_name => 'ExpressionList', :foreign_key => :expression_list_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  has_many :expression_list_values, :class_name => 'ExpressionListValue', :foreign_key => :expression_list_value_id
  has_many :error_messages, :through => expression_list_values
  has_many :expression_lists, :through => expression_list_values
  validates_presence_of :expression_list_value_id
  validates_numericality_of :expression_list_value_id, :allow_nil => false, :only_integer => true
  validates_presence_of :expression_list_id
  validates_numericality_of :expression_list_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :expr
  validates_length_of :expr, :allow_nil => false, :maximum => 255
  validates_numericality_of :error_message_id, :allow_nil => true, :only_integer => true
end
