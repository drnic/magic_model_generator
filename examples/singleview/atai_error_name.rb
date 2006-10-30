class AtaiErrorName < ActiveRecord::Base
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  validates_presence_of :error_message_id
  validates_numericality_of :error_message_id, :allow_nil => false, :only_integer => true
  validates_presence_of :error_name
  validates_length_of :error_name, :allow_nil => false, :maximum => 40
end
