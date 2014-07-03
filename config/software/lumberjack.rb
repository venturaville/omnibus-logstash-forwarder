
name "lumberjack"
default_version "0.3.1"

source :git => "https://github.com/elasticsearch/logstash-fowarder.git"
relative_path "logstash-fowarder"

configure_env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include -L/lib -L/usr/lib",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib",
  "PATH" => "#{install_dir}/embedded/bin:#{ENV["PATH"]}",
}

plugin_opts = [
]

build do
  command "./configure --prefix=#{install_dir}/embedded #{plugin_opts.join(' ')}", :env => configure_env
  command "make", :env => configure_env
  command "make install", :env => configure_env
  command "mkdir #{install_dir}/sbin #{install_dir}/etc"
  [ "bin/lumberjack" ].each do |bin|
    command "ln -sf #{install_dir}/embedded/#{bin} #{install_dir}/bin/"
  end
end
