class TemplateReference < ActiveRecord::Base
  belongs_to :template, :class_name => 'Template', :foreign_key => :template_id
  validates_presence_of :template_id
  validates_numericality_of :template_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :referenced_template_id
  validates_numericality_of :referenced_template_id, :allow_nil => false, :only_integer => true
end
