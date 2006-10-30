class InvoiceFormatHistory < ActiveRecord::Base
  belongs_to :invoice_format, :class_name => 'InvoiceFormat', :foreign_key => :invoice_format_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :template, :class_name => 'Template', :foreign_key => :template_id
  belongs_to :entity_validation, :class_name => 'EntityValidation', :foreign_key => :entity_validation_id
  validates_presence_of :invoice_format_id
  validates_numericality_of :invoice_format_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :invoice_format_name
  validates_length_of :invoice_format_name, :allow_nil => false, :maximum => 30
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :invoice_format_status_code
  validates_numericality_of :invoice_format_status_code, :allow_nil => false, :only_integer => true
  validates_presence_of :viewable_ind_code
  validates_numericality_of :viewable_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :stored_image_type_code
  validates_numericality_of :stored_image_type_code, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :template_id
  validates_numericality_of :template_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :entity_validation_id, :allow_nil => true, :only_integer => true
end
