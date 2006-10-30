class GlCode < ActiveRecord::Base
  belongs_to :gl_code, :class_name => 'GlCode', :foreign_key => :gl_code_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :gl_code_id
  has_many :customer_node_histories, :class_name => 'CustomerNodeHistory', :foreign_key => :gl_code_id
  has_many :customer_node_types, :class_name => 'CustomerNodeType', :foreign_key => :gl_code_id
  has_many :gl_codes, :class_name => 'GlCode', :foreign_key => :gl_code_id
  has_many :gl_code_histories, :class_name => 'GlCodeHistory', :foreign_key => :gl_code_id
  has_many :product_subtotals, :class_name => 'ProductSubtotal', :foreign_key => :gl_code_id
  has_many :receivable_type_histories, :class_name => 'ReceivableTypeHistory', :foreign_key => :gl_code_id
  has_many :service_histories, :class_name => 'ServiceHistory', :foreign_key => :gl_code_id
  has_many :service_types, :class_name => 'ServiceType', :foreign_key => :gl_code_id
  has_many :subtotal_histories, :class_name => 'SubtotalHistory', :foreign_key => :gl_code_id
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :atlanta_groups, :through => customer_node_histories
  has_many :customer_nodes, :through => customer_node_histories
  has_many :currencies, :through => customer_node_histories
  has_many :atlanta_operators, :through => customer_node_histories
  has_many :customer_node_types, :through => customer_node_histories
  has_many :schedules, :through => customer_node_histories
  has_many :people, :through => customer_node_histories
  has_many :atlanta_groups, :through => customer_node_types
  has_many :icons, :through => customer_node_types
  has_many :address_formats, :through => customer_node_types
  has_many :atlanta_operators, :through => customer_node_types
  has_many :customer_node_types, :through => customer_node_types
  has_many :invoice_formats, :through => customer_node_types
  has_many :atlanta_groups, :through => gl_code_histories
  has_many :atlanta_operators, :through => gl_code_histories
  has_many :subtotals, :through => product_subtotals
  has_many :products, :through => product_subtotals
  has_many :atlanta_groups, :through => receivable_type_histories
  has_many :accounts, :through => receivable_type_histories
  has_many :atlanta_operators, :through => receivable_type_histories
  has_many :receivable_types, :through => receivable_type_histories
  has_many :customer_nodes, :through => service_histories
  has_many :atlanta_operators, :through => service_histories
  has_many :service_types, :through => service_histories
  has_many :services, :through => service_histories
  has_many :contracts, :through => service_histories
  has_many :people, :through => service_histories
  has_many :atlanta_groups, :through => service_types
  has_many :icons, :through => service_types
  has_many :address_formats, :through => service_types
  has_many :atlanta_operators, :through => service_types
  has_many :service_types, :through => service_types
  has_many :atlanta_groups, :through => subtotal_histories
  has_many :subtotals, :through => subtotal_histories
  has_many :currencies, :through => subtotal_histories
  has_many :atlanta_operators, :through => subtotal_histories
  has_many :receivable_types, :through => subtotal_histories
  validates_presence_of :gl_code_id
  validates_numericality_of :gl_code_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
