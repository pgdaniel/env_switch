class Switcher
  def initialize(env_filename)
    @env_filename = env_filename
  end

  def switch
    files = Dir.glob("*.env")

    result = files.select { |f| f == "#{@env_filename}.env" }

    if !result.empty?
      FileUtils.cp(result.first, '.env')
      puts "Copied #{result.first} to .env"
    else
      puts "No env found for #{@env_filename}"
    end

  end
end
