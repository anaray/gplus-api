bin_dir = File.expand_path("..", __FILE__)
lib_dir = File.expand_path("../lib", bin_dir)

$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.uniq!

require 'version'
require 'connection'

#Enable all the REST communication with G+ api
module Feed
  class GPlus
    include Connection

    def get_person(name)
    	get('people', {:query => name})
    end

    def get_activity()
    end

  end
end

