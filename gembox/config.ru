require "rubygems"
require "geminabox"

Geminabox.data = "/geminabox-data"

use Rack::Session::Pool, expire_after: 1000 # sec
use Rack::Protection

run Geminabox::Server