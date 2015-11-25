
script 'run_experiment' do
  cwd "/tmp"
  user node['terasort']['user']
  group node['terasort']['group']
  interpreter "bash"
  code <<-EOM
echo "hello"
  EOM
end

