class Template < ActiveRecord::Base
  belongs_to :template, :class_name => 'Template', :foreign_key => :template_id
  has_many :invoice_format_histories, :class_name => 'InvoiceFormatHistory', :foreign_key => :template_id
  has_many :templates, :class_name => 'Template', :foreign_key => :template_id
  has_many :template_histories, :class_name => 'TemplateHistory', :foreign_key => :template_id
  has_many :template_references, :class_name => 'TemplateReference', :foreign_key => :template_id
  has_many :template_variables, :class_name => 'TemplateVariable', :foreign_key => :template_id
  has_many :atlanta_groups, :through => invoice_format_histories
  has_many :atlanta_operators, :through => invoice_format_histories
  has_many :invoice_formats, :through => invoice_format_histories
  has_many :entity_validations, :through => invoice_format_histories
  has_many :atlanta_groups, :through => template_histories
  has_many :atlanta_operators, :through => template_histories
  has_many :variable_defns, :through => template_variables
  validates_presence_of :template_id
  validates_numericality_of :template_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
