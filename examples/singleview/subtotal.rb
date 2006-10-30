class Subtotal < ActiveRecord::Base
  belongs_to :subtotal, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :subtotal_id
  has_many :product_subtotals, :class_name => 'ProductSubtotal', :foreign_key => :subtotal_id
  has_many :subtotals, :class_name => 'Subtotal', :foreign_key => :subtotal_id
  has_many :subtotal_histories, :class_name => 'SubtotalHistory', :foreign_key => :subtotal_id
  has_many :subtotal_rating_deltas, :class_name => 'SubtotalRatingDelta', :foreign_key => :subtotal_id
  has_many :subtotal_rating_values, :class_name => 'SubtotalRatingValue', :foreign_key => :subtotal_id
  has_many :subtotal_terms, :class_name => 'SubtotalTerm', :foreign_key => :subtotal_id
  has_many :subtotal_values, :class_name => 'SubtotalValue', :foreign_key => :subtotal_id
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :tariffs, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :products, :through => product_subtotals
  has_many :gl_codes, :through => product_subtotals
  has_many :variable_defns, :through => subtotals
  has_many :atlanta_groups, :through => subtotal_histories
  has_many :currencies, :through => subtotal_histories
  has_many :atlanta_operators, :through => subtotal_histories
  has_many :receivable_types, :through => subtotal_histories
  has_many :gl_codes, :through => subtotal_histories
  has_many :customer_nodes, :through => subtotal_rating_deltas
  has_many :normalised_event_files, :through => subtotal_rating_deltas
  has_many :services, :through => subtotal_rating_deltas
  has_many :normalised_events, :through => subtotal_rating_deltas
  has_many :customer_nodes, :through => subtotal_rating_values
  has_many :normalised_event_files, :through => subtotal_rating_values
  has_many :services, :through => subtotal_rating_values
  has_many :customer_nodes, :through => subtotal_values
  has_many :invoices, :through => subtotal_values
  has_many :services, :through => subtotal_values
  validates_presence_of :subtotal_id
  validates_numericality_of :subtotal_id, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
  validates_numericality_of :blob_variable_defn_id, :allow_nil => true, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
