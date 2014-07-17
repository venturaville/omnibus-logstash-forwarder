
name "lumberjack"
default_version "v0.3.1"

source :git => "https://github.com/elasticsearch/logstash-forwarder.git"
relative_path "lumberjack"

configure_env = {
  "PATH" => "/usr/local/go/bin:#{ENV["PATH"]}",
}

case platform
when "ubuntu"
  build do
    command "make", :env => configure_env
    command "make deb", :env => configure_env
    command "sudo dpkg -i ./lumberjack_#{version.reverse.chop.reverse}_amd64.deb"
    command "cp /etc/init.d/lumberjack /opt/lumberjack/bin/lumberjack.init"
  end
when "redhat", "centos"
  build do
    command "make", :env => configure_env
    command "make deb", :env => configure_env
    command "sudo rpm -i ./lumberjack_#{version.reverse.chop.reverse}_amd64.rpm"
    command "cp /etc/init.d/lumberjack /opt/lumberjack/bin/lumberjack.init"
  end
end

