default['audit']['fetcher'] = 'chef-server-automate'
default['audit']['reporter'] = 'chef-server-automate'

if node['os'] == 'linux'
  default['audit']['profiles'] += [
    {
      name: 'CIS Ubuntu Level 1',
      compliance: 'workstation-1/cis-ubuntu14.04lts-level1',
    },
    {
      name: 'CIS Ubuntu Level 2',
      compliance: 'workstation-1/cis-ubuntu14.04lts-level2',
    },
  ]
elsif node['os'] == 'windows'
  default['audit']['profiles'] = [
    {
      name: 'Windows Baseline',
      compliance: 'leela/windows_baseline_wrapper',
    },
  ]
end
