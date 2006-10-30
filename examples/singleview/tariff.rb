class Tariff < ActiveRecord::Base
  belongs_to :tariff, :class_name => 'Tariff', :foreign_key => :tariff_id
  belongs_to :variable_defn, :class_name => 'VariableDefn', :foreign_key => :variable_defn_id
  has_many :charges, :class_name => 'Charge', :foreign_key => :tariff_id
  has_many :product_tariffs, :class_name => 'ProductTariff', :foreign_key => :tariff_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :tariff_id
  has_many :tariffs, :class_name => 'Tariff', :foreign_key => :tariff_id
  has_many :tariff_charges, :class_name => 'TariffCharge', :foreign_key => :tariff_id
  has_many :tariff_charge_defns, :class_name => 'TariffChargeDefn', :foreign_key => :tariff_id
  has_many :tariff_condition_defns, :class_name => 'TariffConditionDefn', :foreign_key => :tariff_id
  has_many :tariff_histories, :class_name => 'TariffHistory', :foreign_key => :tariff_id
  has_many :tariff_recurrings, :class_name => 'TariffRecurring', :foreign_key => :tariff_id
  has_many :subtotals, :through => charges
  has_many :customer_nodes, :through => charges
  has_many :invoices, :through => charges
  has_many :adjustments, :through => charges
  has_many :accounts, :through => charges
  has_many :currencies, :through => charges
  has_many :services, :through => charges
  has_many :receivable_types, :through => charges
  has_many :normalised_events, :through => charges
  has_many :gl_codes, :through => charges
  has_many :payments, :through => charges
  has_many :charges, :through => charges
  has_many :products, :through => product_tariffs
  has_many :charge_categories, :through => product_tariffs
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :product_instances, :through => rgp_normalised_events
  has_many :variable_defns, :through => tariffs
  has_many :attribute_types, :through => tariff_charge_defns
  has_many :attribute_types, :through => tariff_condition_defns
  has_many :atlanta_groups, :through => tariff_histories
  has_many :currencies, :through => tariff_histories
  has_many :atlanta_operators, :through => tariff_histories
  has_many :charge_categories, :through => tariff_histories
  has_many :receivable_types, :through => tariff_histories
  has_many :normalised_event_types, :through => tariff_recurrings
  has_many :facility_groups, :through => tariff_recurrings
  validates_presence_of :tariff_id
  validates_numericality_of :tariff_id, :allow_nil => false, :only_integer => true
  validates_presence_of :variable_defn_id
  validates_numericality_of :variable_defn_id, :allow_nil => false, :only_integer => true
  validates_length_of :version_str, :allow_nil => true, :maximum => 255
end
