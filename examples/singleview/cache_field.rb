class CacheField < ActiveRecord::Base
  belongs_to :cache, :class_name => 'Cache', :foreign_key => :cache_id
  validates_presence_of :cache_id
  validates_numericality_of :cache_id, :allow_nil => false, :only_integer => true
  validates_presence_of :column_name
  validates_length_of :column_name, :allow_nil => false, :maximum => 255
  validates_presence_of :key_name
  validates_length_of :key_name, :allow_nil => false, :maximum => 30
  validates_length_of :view_name, :allow_nil => true, :maximum => 40
  validates_length_of :where_clause, :allow_nil => true, :maximum => 255
  validates_length_of :search_key, :allow_nil => true, :maximum => 30
  validates_length_of :order_by, :allow_nil => true, :maximum => 255
end
