class ProductHistory < ActiveRecord::Base
  belongs_to :product, :class_name => 'Product', :foreign_key => :product_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :icon, :class_name => 'Icon', :foreign_key => :icon_id
  belongs_to :contract_type, :class_name => 'ContractType', :foreign_key => :contract_type_id
  validates_presence_of :product_id
  validates_numericality_of :product_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :effective_start_date
  validates_presence_of :effective_end_date
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :product_name
  validates_length_of :product_name, :allow_nil => false, :maximum => 60
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 255
  validates_presence_of :icon_id
  validates_numericality_of :icon_id, :allow_nil => false, :only_integer => true
  validates_presence_of :companion_ind_code
  validates_numericality_of :companion_ind_code, :allow_nil => false, :only_integer => true
  validates_presence_of :initial_status_code
  validates_numericality_of :initial_status_code, :allow_nil => false, :only_integer => true
  validates_numericality_of :default_work_force_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :contract_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :qualification_expr_list_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :payment_account_type_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :product_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :prod_svc_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :prod_eqp_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :fac_grp_entity_validation_id, :allow_nil => true, :only_integer => true
  validates_numericality_of :multiple_ind_code, :allow_nil => true, :only_integer => true
end
