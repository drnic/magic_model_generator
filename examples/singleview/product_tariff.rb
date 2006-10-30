class ProductTariff < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  belongs_to :charge_category, :class_name => 'ChargeCategory', :foreign_key => :charge_category_id
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :tariff_id
  validates_numericality_of :tariff_id, :allow_nil => false, :only_integer => true
  validates_presence_of :default_invoice_txt
  validates_length_of :default_invoice_txt, :allow_nil => false, :maximum => 255
  validates_presence_of :charge_category_id
  validates_numericality_of :charge_category_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :priority, :allow_nil => true, :only_integer => true
end
