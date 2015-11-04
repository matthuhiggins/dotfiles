# Data Axle knife.rb
#
# To use: Copy this file to .chef/knife.rb and edit or just symlink to this file
# if no changes are necessary
# Use of direnv is recommended to set ENV vars.
#
# Additional information at http://docs.chef.io/config_rb_knife_optional_settings.html

# your chef user name
chefUser = ENV['CHEF_USER'] || ENV['USER']

# chef server to connect to
chefUrl = ENV['CHEF_SERVER_URL'] || 'https://chef.data-axle.com'

# chef organization name
chefOrg = ENV['CHEF_ORG'] || 'data-axle'

# chef repo path
chef_repo_dir = ENV['CHEF_REPO'] || '~/chef-repo/cookbooks'

# organization required for chef 12
chefUrl = "#{chefUrl}/organizations/#{chefOrg}" if chefOrg.length > 0

# determine .chef dir
dot_chef_dir = File.expand_path File.dirname(__FILE__)

ssl_verify_mode          :verify_peer
log_level                :info
log_location             STDOUT

node_name                chefUser
client_key               File.join(dot_chef_dir, chefOrg, "#{chefUser}.pem")
chef_server_url          chefUrl
syntax_check_cache_path  File.join(dot_chef_dir, chefOrg, "syntax_check_cache")
cookbook_path            [ File.join(chef_repo_dir, 'cookbooks') ]

# aws credentials
knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:aws_ssh_key_id] = ENV['USER']

# local backup path
knife[:chef_server_backup_dir] = File.join(dot_chef_dir, chefOrg, 'backup')