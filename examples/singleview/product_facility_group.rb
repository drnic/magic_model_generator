class ProductFacilityGroup < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :facility_group, :class_name => 'FacilityGroup', :foreign_key => :facility_group_id
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :facility_group_id
  validates_numericality_of :facility_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :seqnr
  validates_numericality_of :seqnr, :allow_nil => false, :only_integer => true
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :standard_product_ind_code
  validates_numericality_of :standard_product_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :initial_fac_group_status_code
  validates_numericality_of :initial_fac_group_status_code, :allow_nil => false, :only_integer => true
end
