
name "lumberjack"
maintainer "david.nicklay@turner.com"
homepage "https://github.com/elasticsearch/logstash-forwarder"

replaces        "lumberjack"
install_path    "/opt/lumberjack"
build_version   "0.3.1"  # Make sure this matches the config/software/logstash-forwarder.rb
build_iteration 3

dependency "preparation"
dependency "lumberjack"

exclude "\.git*"
exclude "bundler\/git"
