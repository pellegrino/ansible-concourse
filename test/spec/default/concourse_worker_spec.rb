require 'spec_helper'

describe file('/opt/concourse/bin/concourse-worker') do
  its(:content) { should contain '--runtime "containerd" ' }
  its(:content) { should contain 'export CONCOURSE_CONTAINERD_ALLOW_HOST_ACCESS="false"' }
  its(:content) { should contain '--containerd-dns-server "127.0.0.1" ' }
  its(:content) { should_not contain '--containerd-allow-host-access "false"' }
end
