dbquery = "chef_environment:#{node.chef_environment}" \
          ' AND recipes:bjc-ecommerce\:\:mysql'

dbhost = search(:node, dbquery).first
if dbhost
  node.override['bjc-ecommerce']['db-host'] = dbhost['ec2']['public_ipv4']
else
  node.override['bjc-ecommerce']['db-host'] = 'localhost'
end

include_recipe 'bjc-ecommerce::tksetup'
include_recipe 'bjc-ecommerce::java'
include_recipe 'bjc-ecommerce::tomcat'
include_recipe 'bjc-ecommerce::cart'
include_recipe 'bjc-ecommerce::ssl'
