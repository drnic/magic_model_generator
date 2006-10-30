class PersonType < ActiveRecord::Base
  belongs_to :person_type, :class_name => 'PersonType', :foreign_key => :person_type_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :address_format, :class_name => 'AddressFormat', :foreign_key => :address_format_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  has_many :person_histories, :class_name => 'PersonHistory', :foreign_key => :person_type_id
  has_many :person_types, :class_name => 'PersonType', :foreign_key => :person_type_id
  has_many :atlanta_groups, :through => person_histories
  has_many :atlanta_operators, :through => person_histories
  has_many :people, :through => person_histories
  has_many :atlanta_groups, :through => person_types
  has_many :icons, :through => person_types
  has_many :address_formats, :through => person_types
  has_many :atlanta_operators, :through => person_types
  has_many :entity_validations, :through => person_types
  validates_presence_of :person_type_id
  validates_numericality_of :person_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :person_type_name
  validates_length_of :person_type_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :person_form_code
  validates_numericality_of :person_form_code, :allow_nil => false, :only_integer => true
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :address_format_id
  validates_numericality_of :address_format_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :search_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :verify_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
