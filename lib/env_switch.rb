require 'env_switch/switcher'

class EnvSwitch
  def self.switch(env_filename)
    switcher = Switcher.new(env_filename)
    switcher.switch
  end
end
