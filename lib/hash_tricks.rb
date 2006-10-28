class Hash
  # lets through the keys in the argument
  # >> {:one => 1, :two => 2, :three => 3}.pass(:one)
  # => {:one=>1}
  def pass(*keys)
    tmp = self.clone
    keys = keys[0] if keys[0].is_a? Array
    tmp.delete_if {|k,v| ! keys.include?(k) }
    tmp
  end

	def merge_with_prefix(prefix, hash)
		merged = clone
		hash.each {|key, value| merged.merge!("#{prefix}_#{key}" => value)}
		merged
	end

	def merge_with_prefix!(prefix, hash)
		hash.each {|key, value| merge!("#{prefix}_#{key}" => value)}
	end
end
