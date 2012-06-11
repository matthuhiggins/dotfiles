log_level                :info
log_location             STDOUT
node_name                'matthuhiggins'
client_key               '~/.chef/matthuhiggins.pem'
validation_client_name   'gotime-validator'
validation_key           '~/.chef/gotime.pem'
chef_server_url          'https://api.opscode.com/organizations/gotime'
cache_type               'BasicFile'
cache_options             :path => '~/.chef/checksums'
cookbook_path             ['~/infogroup/chef-repo/cookbooks', '~/infogroup/chef-repo/site-cookbooks']
knife[:aws_access_key_id]     = ENV['AMAZON_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AMAZON_SECRET_ACCESS_KEY']
