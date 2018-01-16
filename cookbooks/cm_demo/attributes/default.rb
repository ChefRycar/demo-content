default['audit']['fetcher'] = 'chef-server-automate'
default['audit']['reporter'] = 'chef-server-automate'

default['audit']['profiles'] = [
  {
    name: 'Linux Baseline',
    compliance: 'workstation-1/cm_profile',
  },
]
