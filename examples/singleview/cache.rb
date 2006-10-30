class Cache < ActiveRecord::Base
  belongs_to :cache, :class_name => 'Cache', :foreign_key => :cache_id
  has_many :caches, :class_name => 'Cache', :foreign_key => :cache_id
  has_many :cache_fields, :class_name => 'CacheField', :foreign_key => :cache_id
  validates_presence_of :cache_id
  validates_numericality_of :cache_id, :allow_nil => false, :only_integer => true
  validates_presence_of :cache_name
  validates_length_of :cache_name, :allow_nil => false, :maximum => 30
  validates_presence_of :cache_variable
  validates_length_of :cache_variable, :allow_nil => false, :maximum => 50
  validates_presence_of :view_name
  validates_length_of :view_name, :allow_nil => false, :maximum => 40
  validates_presence_of :key_column
  validates_length_of :key_column, :allow_nil => false, :maximum => 30
  validates_presence_of :operator_id
  validates_numericality_of :operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :group_id
  validates_numericality_of :group_id, :allow_nil => false, :only_integer => true
  validates_length_of :preload_where_clause, :allow_nil => true, :maximum => 2000
  validates_numericality_of :date_ranged_ind_code, :allow_nil => true, :only_integer => true
  validates_length_of :complete_function, :allow_nil => true, :maximum => 40
end
