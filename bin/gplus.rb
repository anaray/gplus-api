bin_dir = File.expand_path("..", __FILE__)
lib_dir = File.expand_path("../lib", bin_dir)

$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.uniq!

require 'version'

#Enable all the REST communication with G+ api
module Feed
  class GPlus
    
  end

end
