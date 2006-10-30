class EquipmentHistory < ActiveRecord::Base
  belongs_to :equipment, :class_name => 'Equipment', :foreign_key => :equipment_id
  belongs_to :equipment_type, :class_name => 'EquipmentType', :foreign_key => :equipment_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :equipment_id
  validates_numericality_of :equipment_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :equipment_type_id
  validates_numericality_of :equipment_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :equipment_status_code
  validates_numericality_of :equipment_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :idle_ind_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :reason_code, :allow_nil => true, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_length_of :equipment_subtype, :allow_nil => true, :maximum => 40
  validates_numericality_of :equipment_origin_code, :allow_nil => true, :only_integer => true
  validates_length_of :make, :allow_nil => true, :maximum => 40
  validates_length_of :model, :allow_nil => true, :maximum => 40
  validates_presence_of :nr_items
  validates_numericality_of :nr_items, :allow_nil => false, :only_integer => true
  validates_presence_of :serial_number
  validates_length_of :serial_number, :allow_nil => false, :maximum => 64
  validates_length_of :decoded_serial_number, :allow_nil => true, :maximum => 64
  validates_length_of :to_serial_number, :allow_nil => true, :maximum => 64
  validates_length_of :decoded_to_serial_number, :allow_nil => true, :maximum => 64
  validates_length_of :network_address, :allow_nil => true, :maximum => 64
  validates_length_of :decoded_network_address, :allow_nil => true, :maximum => 64
  validates_length_of :to_network_address, :allow_nil => true, :maximum => 64
  validates_length_of :decoded_to_network_address, :allow_nil => true, :maximum => 64
  validates_numericality_of :reserved_customer_node_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :address_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :warranty, :allow_nil => true, :only_integer => true
  validates_numericality_of :warranty_unit_code, :allow_nil => true, :only_integer => true
  validates_length_of :comments, :allow_nil => true, :maximum => 255
  validates_length_of :pin, :allow_nil => true, :maximum => 20
  validates_length_of :puk, :allow_nil => true, :maximum => 20
  validates_length_of :pin2, :allow_nil => true, :maximum => 20
  validates_length_of :puk2, :allow_nil => true, :maximum => 20
  validates_length_of :subscription_key, :allow_nil => true, :maximum => 32
  validates_length_of :adm_key, :allow_nil => true, :maximum => 20
  validates_numericality_of :sender_person_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :recipient_person_id, :allow_nil => true, :only_integer => true
  validates_length_of :transit_organisation, :allow_nil => true, :maximum => 80
  validates_length_of :transit_contact_number, :allow_nil => true, :maximum => 30
  validates_length_of :transit_reference_number, :allow_nil => true, :maximum => 30
  validates_length_of :general_1, :allow_nil => true, :maximum => 255
  validates_length_of :general_2, :allow_nil => true, :maximum => 255
  validates_length_of :general_3, :allow_nil => true, :maximum => 255
  validates_length_of :general_4, :allow_nil => true, :maximum => 255
  validates_length_of :general_5, :allow_nil => true, :maximum => 255
  validates_length_of :general_6, :allow_nil => true, :maximum => 255
  validates_length_of :general_7, :allow_nil => true, :maximum => 255
  validates_length_of :general_8, :allow_nil => true, :maximum => 255
  validates_length_of :general_9, :allow_nil => true, :maximum => 255
  validates_length_of :general_10, :allow_nil => true, :maximum => 255
end
