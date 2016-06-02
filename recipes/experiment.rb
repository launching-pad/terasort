
script 'run_experiment' do
  cwd "/tmp"
  user node['terasort']['user']
  group node['terasort']['group']
  interpreter "bash"
  code <<-EOM
/srv/hadoop-2.4.0/bin/hadoop jar /srv/hadoop-2.4.0/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.4.0.jar terasort /srv/teragen /srv/teragen/output
  EOM
end

