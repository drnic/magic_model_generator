class ProductInstance < ActiveRecord::Base
  belongs_to :product_instance, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  has_many :fac_group_instance_hists, :class_name => 'FacGroupInstanceHist', :foreign_key => :product_instance_id
  has_many :product_instances, :class_name => 'ProductInstance', :foreign_key => :product_instance_id
  has_many :product_instance_equips, :class_name => 'ProductInstanceEquip', :foreign_key => :product_instance_id
  has_many :product_instance_histories, :class_name => 'ProductInstanceHistory', :foreign_key => :product_instance_id
  has_many :product_instance_services, :class_name => 'ProductInstanceService', :foreign_key => :product_instance_id
  has_many :rgp_normalised_events, :class_name => 'RgpNormalisedEvent', :foreign_key => :product_instance_id
  has_many :rpsi_ts, :class_name => 'RpsiT', :foreign_key => :product_instance_id
  has_many :t2_prov_requests, :class_name => 'T2ProvRequest', :foreign_key => :product_instance_id
  has_many :xpsi_product_batches, :class_name => 'XpsiProductBatch', :foreign_key => :product_instance_id
  has_many :xpsi_product_statuses, :class_name => 'XpsiProductStatus', :foreign_key => :product_instance_id
  has_many :xpsi_trt_revoke_prod_insts, :class_name => 'XpsiTrtRevokeProdInst', :foreign_key => :product_instance_id
  has_many :fac_group_instances, :through => fac_group_instance_hists
  has_many :facility_groups, :through => fac_group_instance_hists
  has_many :equipment, :through => product_instance_equips
  has_many :product_service_types, :through => product_instance_equips
  has_many :customer_nodes, :through => product_instance_histories
  has_many :atlanta_operators, :through => product_instance_histories
  has_many :products, :through => product_instance_histories
  has_many :contracts, :through => product_instance_histories
  has_many :products, :through => product_instance_services
  has_many :services, :through => product_instance_services
  has_many :normalised_event_types, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rgp_normalised_events
  has_many :currencies, :through => rgp_normalised_events
  has_many :fac_group_instances, :through => rgp_normalised_events
  has_many :tariffs, :through => rgp_normalised_events
  has_many :equipment, :through => rgp_normalised_events
  has_many :services, :through => rgp_normalised_events
  has_many :bill_runs, :through => rgp_normalised_events
  has_many :rgp_files, :through => rgp_normalised_events
  has_many :customer_nodes, :through => rpsi_ts
  has_many :task_queues, :through => rpsi_ts
  has_many :equipment, :through => rpsi_ts
  has_many :services, :through => rpsi_ts
  has_many :t2_prov_requests, :through => t2_prov_requests
  has_many :products, :through => t2_prov_requests
  validates_presence_of :product_instance_id
  validates_numericality_of :product_instance_id, :allow_nil => false, :only_integer => true
end
