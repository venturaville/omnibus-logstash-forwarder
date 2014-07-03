
name "lumberjack"
maintainer "david.nicklay@turner.com"
homepage "https://github.com/elasticsearch/logstash-forwarder"

replaces        "lumberjack"
install_path    "/opt/lumberjack"
build_version   "0.3.1"  # Make sure this matches the config/software/lumberjack.rb
build_iteration 1

# creates required build directories
dependency "preparation"

# lumberjack dependencies/components
dependency "lumberjack"

exclude "\.git*"
exclude "bundler\/git"
