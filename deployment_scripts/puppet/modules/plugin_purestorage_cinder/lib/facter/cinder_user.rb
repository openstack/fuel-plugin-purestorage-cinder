require 'facter/util/resolution'

Facter.add("cinder_user") do
  setcode do
    user = Facter::Util::Resolution.exec("/usr/bin/openstack user show cinder_internal_user | grep id | awk \'{print $4}\'")
  end
end
