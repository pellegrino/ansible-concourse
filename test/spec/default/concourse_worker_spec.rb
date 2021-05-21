require 'spec_helper'

describe file('/opt/concourse/bin/concourse-worker') do
  its(:content) { should contain '--runtime "containerd" ' }
  its(:content) { should contain '--containerd-dns-server "127.0.0.1" ' }
end
