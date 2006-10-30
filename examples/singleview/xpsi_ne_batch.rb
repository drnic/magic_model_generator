class XpsiNeBatch < ActiveRecord::Base
  belongs_to :xpsi_ne_batch, :class_name => 'XpsiNeBatch', :foreign_key => :xpsi_ne_batch_id
  belongs_to :error_message, :class_name => 'ErrorMessage', :foreign_key => :error_message_id
  has_many :xpsi_ne_batches, :class_name => 'XpsiNeBatch', :foreign_key => :xpsi_ne_batch_id
  has_many :error_messages, :through => xpsi_ne_batches
  validates_presence_of :xpsi_ne_batch_id
  validates_numericality_of :xpsi_ne_batch_id, :allow_nil => false, :only_integer => true
  validates_presence_of :source
  validates_length_of :source, :allow_nil => false, :maximum => 80
  validates_presence_of :create_date
  validates_numericality_of :sequence_number, :allow_nil => true, :only_integer => true
  validates_presence_of :ne_filename
  validates_length_of :ne_filename, :allow_nil => false, :maximum => 255
  validates_numericality_of :error_message_id, :allow_nil => true, :only_integer => true
  validates_length_of :error_message, :allow_nil => true, :maximum => 255
  validates_presence_of :revoke_ind_code
  validates_numericality_of :revoke_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :event_count
  validates_numericality_of :event_count, :allow_nil => false, :only_integer => true
end
