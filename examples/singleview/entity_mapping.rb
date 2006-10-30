class EntityMapping < ActiveRecord::Base
  validates_presence_of :entity_name
  validates_length_of :entity_name, :allow_nil => false, :maximum => 30
  validates_presence_of :user_entity_name
  validates_length_of :user_entity_name, :allow_nil => false, :maximum => 40
  validates_presence_of :user_entity_name_plural
  validates_length_of :user_entity_name_plural, :allow_nil => false, :maximum => 40
  validates_length_of :entity_table_name, :allow_nil => true, :maximum => 30
  validates_length_of :entity_column_name, :allow_nil => true, :maximum => 30
  validates_length_of :entity_where_clause, :allow_nil => true, :maximum => 2000
end
