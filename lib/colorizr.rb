class String

  @@colors = {:red => 31, :green => 32, :yellow => 33, :blue => 34,
              :pink => 95, :light_blue => 94, :white => 97,
              :light_grey => 37, :black => 30}

  def self.colors
    @@colors.keys
  end

  def self.sample_colors
    @@colors.each {|k, v| puts "This is \e[#{v}m#{k}\e[0m"}
  end

  def self.create_colors
    #code to generate all color methods goes here
    @@colors.each do |k, v|
    	# why self refers to String class rather than instance?
      class_eval(%Q{
                   def #{k}
                     '\e[#{v}m#{self}\e[0m'
                   end

      })
    end
  end

  # let the magic begin.
  create_colors

end
