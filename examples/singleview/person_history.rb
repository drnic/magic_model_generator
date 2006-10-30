class PersonHistory < ActiveRecord::Base
  belongs_to :person, :class_name => 'Person', :foreign_key => :person_id
  belongs_to :person_type, :class_name => 'PersonType', :foreign_key => :person_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  validates_presence_of :person_id
  validates_numericality_of :person_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :person_type_id
  validates_numericality_of :person_type_id, :allow_nil => false, :only_integer => true
  validates_length_of :primary_identifier, :allow_nil => true, :maximum => 80
  validates_length_of :primary_identifier2, :allow_nil => true, :maximum => 80
  validates_length_of :title, :allow_nil => true, :maximum => 60
  validates_length_of :family_name, :allow_nil => true, :maximum => 110
  validates_length_of :family_name_uppercase, :allow_nil => true, :maximum => 110
  validates_length_of :family_name_soundex, :allow_nil => true, :maximum => 10
  validates_length_of :given_names, :allow_nil => true, :maximum => 80
  validates_length_of :given_names_uppercase, :allow_nil => true, :maximum => 80
  validates_length_of :given_names_soundex, :allow_nil => true, :maximum => 10
  validates_presence_of :official_name
  validates_length_of :official_name, :allow_nil => false, :maximum => 200
  validates_presence_of :official_name_uppercase
  validates_length_of :official_name_uppercase, :allow_nil => false, :maximum => 200
  validates_length_of :preferred_name, :allow_nil => true, :maximum => 80
  validates_numericality_of :gender_code, :allow_nil => true, :only_integer => true
  validates_presence_of :person_status_code
  validates_numericality_of :person_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :marital_status_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :disability_type_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :home_address_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :postal_address_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :work_address_id, :allow_nil => true, :only_integer => true
  validates_length_of :home_phone_nr, :allow_nil => true, :maximum => 30
  validates_length_of :work_phone_nr, :allow_nil => true, :maximum => 30
  validates_length_of :mobile_phone_nr, :allow_nil => true, :maximum => 30
  validates_length_of :fax_phone_nr, :allow_nil => true, :maximum => 30
  validates_length_of :email_address, :allow_nil => true, :maximum => 255
  validates_length_of :x400_address, :allow_nil => true, :maximum => 255
  validates_numericality_of :profession_code, :allow_nil => true, :only_integer => true
  validates_length_of :employer, :allow_nil => true, :maximum => 80
  validates_numericality_of :nationality_code, :allow_nil => true, :only_integer => true
  validates_length_of :passport, :allow_nil => true, :maximum => 40
  validates_numericality_of :written_language_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :spoken_language_code, :allow_nil => true, :only_integer => true
  validates_numericality_of :residency_status_code, :allow_nil => true, :only_integer => true
  validates_length_of :visa_number, :allow_nil => true, :maximum => 40
  validates_numericality_of :visa_type_code, :allow_nil => true, :only_integer => true
  validates_length_of :social_security_number, :allow_nil => true, :maximum => 40
  validates_length_of :drivers_licence, :allow_nil => true, :maximum => 40
  validates_length_of :password, :allow_nil => true, :maximum => 15
  validates_numericality_of :yearly_earnings, :allow_nil => true
  validates_numericality_of :yearly_earnings_currency_id, :allow_nil => true, :only_integer => true
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
