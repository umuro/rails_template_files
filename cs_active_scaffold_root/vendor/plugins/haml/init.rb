#`haml --rails project_dir` should generate this file but cannot be called on windows xp
require 'rubygems'
begin
  require File.join(File.dirname(__FILE__), 'lib', 'haml') # From here
rescue LoadError
  require 'haml' # From gem
end

# Load Haml and Sass
Haml.init_rails(binding)
