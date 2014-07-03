
name "logstash-forwarder"
default_version "v0.3.1"

source :git => "https://github.com/elasticsearch/logstash-forwarder.git"
relative_path "logstash-forwarder"

configure_env = {
  "PATH" => "/usr/local/go/bin:#{ENV["PATH"]}",
}

build do
  command "make", :env => configure_env
  command "make deb", :env => configure_env
end

