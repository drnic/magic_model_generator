#TODO: Use :dependent for FK cascade?

module ActiveRecord
  class Base
    class << self
      public
        def get_unique_index_columns
            self.connection.indexes(self.table_name, "#{self.name} Indexes").select { |index| index.unique && index.columns.size == 1 }.map{ |index| index.columns.first }
        end
    end
  end
end
