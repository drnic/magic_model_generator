module CommonHelpers
  def in_tmp_folder(&block)
    FileUtils.chdir(@tmp_root, &block)
  end

  def in_project_folder(&block)
    project_folder = @active_project_folder || @tmp_root
    FileUtils.chdir(project_folder, &block)
  end

  def in_home_folder(&block)
    FileUtils.chdir(@home_path, &block)
  end

  def force_local_lib_override(project_name = @project_name)
    rakefile = File.read(File.join(project_name, 'Rakefile'))
    File.open(File.join(project_name, 'Rakefile'), "w+") do |f|
      f << "$:.unshift('#{@lib_path}')\n"
      f << rakefile
    end
  end

  def setup_active_project_folder project_name
    @active_project_folder = File.expand_path(File.join(@tmp_root, project_name))
    FileUtils.mkdir_p(@active_project_folder)
    @project_name = project_name
  end
end

World { |world| world.extend CommonHelpers }