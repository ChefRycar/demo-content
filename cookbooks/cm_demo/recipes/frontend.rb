
dbhost = search(:node, "chef_environment:#{node.chef_environment} AND recipes:bjc-ecommerce\:\:mysql").first
node.override['bjc-ecommerce']['db-host'] = dbhost unless node['recipes'].include('mysql')

include_recipe 'bjc-ecomnmerce::tksetup'
include_recipe 'bjc-ecommerce::java'
include_recipe 'bjc-ecommerce::tomcat'
include_recipe 'bjc-ecommerce::cart'
include_recipe 'bjc-ecommerce::ssl'
