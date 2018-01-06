# encoding: utf-8
# copyright: 2017, The Authors

title 'Validate Site'

control 'site-1.0' do
  title 'Site Status'
  desc 'Ensure the site returns valid content'
  describe http('https://localhost/cart/', ssl_verify: false) do
    its('status') { should cmp 200 }
    its('body') { should cmp 'Planet Express' }
  end
end
