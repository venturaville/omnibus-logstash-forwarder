
name "lumberjack"
maintainer "david.nicklay@turner.com"
homepage "https://github.com/elasticsearch/logstash-forwarder"

replaces        "logstash-forwarder"
install_path    "/opt/lumberjack"
build_version   "0.3.1"  # Make sure this matches the config/software/logstash-forwarder.rb
build_iteration 1

dependency "preparation"
dependency "logstash-forwader"

exclude "\.git*"
exclude "bundler\/git"
