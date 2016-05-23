# colorizr
A simple gem to colorize terminal output. It supports a bunch of known colors: red, green, yellow, blue, pink, light_blue, white, light_grey, black.


## build and install gem
    gem build colorizr.gemspec 
    gem install  colorizr-0.0.1.gem

    # require 'colorizr' in your code
    require 'colorizr'
    
## Usage
    # show all the colors
    puts String.colors
    # do you want to have a look at the sample?
    String.sample_colors

    # it's quite easy to use
    puts "John".red
    puts "Paul".green
    puts "George".blue
    puts "Ringo".yellow

