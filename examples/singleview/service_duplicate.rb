class ServiceDuplicate < ActiveRecord::Base
  validates_presence_of :service_name_hash
  validates_numericality_of :service_name_hash, :allow_nil => false, :only_integer => true
end
