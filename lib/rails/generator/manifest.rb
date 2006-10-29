class Rails::Generator::Manifest
	attr_reader :actions

  def copy_actions(manifest)
		@actions.concat(manifest.actions)
  end
end

