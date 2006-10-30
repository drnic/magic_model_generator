class T2ProvReqAction < ActiveRecord::Base
  validates_presence_of :request_id
  validates_numericality_of :request_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :sequence_number, :allow_nil => true, :only_integer => true
  validates_numericality_of :entry_type, :allow_nil => true, :only_integer => true
  validates_numericality_of :type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :parent_instance_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :instance_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :new_status, :allow_nil => true, :only_integer => true
  validates_numericality_of :old_status, :allow_nil => true, :only_integer => true
  validates_numericality_of :parent_type_id, :allow_nil => true, :only_integer => true
  validates_length_of :service_name, :allow_nil => true, :maximum => 255
  validates_numericality_of :prov_system, :allow_nil => true, :only_integer => true
  validates_numericality_of :action_code, :allow_nil => true, :only_integer => true
  validates_length_of :action_data, :allow_nil => true, :maximum => 4000
  validates_length_of :provisioning_response, :allow_nil => true, :maximum => 255
  validates_numericality_of :action_status, :allow_nil => true, :only_integer => true
  validates_numericality_of :success_status, :allow_nil => true, :only_integer => true
  validates_numericality_of :intermediate_status, :allow_nil => true, :only_integer => true
  validates_numericality_of :failure_status, :allow_nil => true, :only_integer => true
  validates_numericality_of :update_responsible, :allow_nil => true, :only_integer => true
end
