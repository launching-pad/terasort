
script 'run_experiment' do
  cwd "/tmp"
  user node['terasort']['user']
  group node['terasort']['group']
  interpreter "bash"
  code <<-EOM
echo "hello"
mkdir /srv/teragen_jar
wget https://s3-eu-west-1.amazonaws.com/karamel/terasort_2.10-0.0.1.jar
/usr/local/flink-0.9.1/bin/flink run -p 1 -m 172.28.128.5:6123 -c eastcircle.terasort.FlinkTeraSort /tmp/terasort_2.10-0.0.1.jar hdfs://172.28.128.5:8020 /srv/teragen/ /terasortOut 1 true true
  EOM
end

