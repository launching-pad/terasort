
script 'run_experiment' do
  cwd "/tmp"
  user node['terasort']['user']
  group node['terasort']['group']
  interpreter "bash"
  code <<-EOM
echo "hello"
mkdir /srv/teragen_jar
wget https://s3-eu-west-1.amazonaws.com/karamel/terasort_2.10-0.0.1.jar
  EOM
end

