
script 'run_experiment' do
  cwd "/tmp"
  user node['terasort']['user']
  group node['terasort']['group']
  interpreter "bash"
  code <<-EOM
echo "hello"
wget https://s3-eu-west-1.amazonaws.com/karamel/terasort_2.10-0.0.1.jar
/usr/local/flink/bin/flink run -p #{node[:flink][:partitions]} -m #{node.terasort.experiment.private_ips[0]}:6123 -c eastcircle.terasort.FlinkTeraSort /tmp/terasort_2.10-0.0.1.jar hdfs://#{node.terasort.experiment.private_ips[0]}:8020 /srv/teragen/ /terasortOut #{node[:flink][:partitions]} true true
  EOM
end

