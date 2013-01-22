class Directory

  def initialize(name)
    @name = name
    create_directory
  end

  def create_directory
    if File.directory?(@name)
      puts "#{@name} directory already exists"
    else
      FileUtils.mkdir(@name)
      puts "#{@name} directory created"
    end
  end
end
