chef_username = "matthuhiggins"
current_dir   = File.dirname(__FILE__)
user_email    = `git config --get user.email`

home_dir      = ENV['HOME']
org           = ENV['chef_org'] || 'my_org'

knife_override = "#{home_dir}/.chef/knife_override.rb"

log_level :info
log_location STDOUT

node_name chef_username
client_key "#{home_dir}/.chef/#{chef_username}.pem"

cookbook_email "#{user_email}"

cookbook_path     [ "~/chef-repo/cookbooks", "~/chef-repo/site_cookbooks" ]
role_path         "#{current_dir}/../roles"
environment_path  "#{current_dir}/../environments"

validation_client_name   'infogroup-validator'
validation_key           "#{current_dir}/infogroup-validator.pem"
chef_server_url          'https://chef.prd.data-axle.infogroup.com'

knife[:aws_access_key_id]     = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
