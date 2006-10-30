class ServiceDaArray < ActiveRecord::Base
  belongs_to :service, :class_name => 'Service', :foreign_key => :service_id
  belongs_to :derived_attribute, :class_name => 'DerivedAttribute', :foreign_key => :derived_attribute_id
  validates_presence_of :service_id
  validates_numericality_of :service_id, :allow_nil => false, :only_integer => true
  validates_presence_of :derived_attribute_id
  validates_numericality_of :derived_attribute_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_length_of :description, :allow_nil => true, :maximum => 80
  validates_presence_of :index1_value
  validates_length_of :index1_value, :allow_nil => false, :maximum => 255
  validates_length_of :index2_value, :allow_nil => true, :maximum => 255
  validates_length_of :index3_value, :allow_nil => true, :maximum => 255
  validates_length_of :index4_value, :allow_nil => true, :maximum => 255
  validates_length_of :index5_value, :allow_nil => true, :maximum => 255
  validates_length_of :index6_value, :allow_nil => true, :maximum => 255
  validates_length_of :index7_value, :allow_nil => true, :maximum => 255
  validates_length_of :index8_value, :allow_nil => true, :maximum => 255
  validates_length_of :index9_value, :allow_nil => true, :maximum => 255
  validates_length_of :index10_value, :allow_nil => true, :maximum => 255
  validates_length_of :result1_value, :allow_nil => true, :maximum => 255
  validates_length_of :result2_value, :allow_nil => true, :maximum => 255
  validates_length_of :result3_value, :allow_nil => true, :maximum => 255
  validates_length_of :result4_value, :allow_nil => true, :maximum => 255
  validates_length_of :result5_value, :allow_nil => true, :maximum => 255
  validates_length_of :result6_value, :allow_nil => true, :maximum => 255
  validates_length_of :result7_value, :allow_nil => true, :maximum => 255
  validates_length_of :result8_value, :allow_nil => true, :maximum => 255
  validates_length_of :result9_value, :allow_nil => true, :maximum => 255
  validates_length_of :result10_value, :allow_nil => true, :maximum => 255
end
