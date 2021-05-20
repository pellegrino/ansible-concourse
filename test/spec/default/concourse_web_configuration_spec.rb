require 'spec_helper'

describe file('/opt/concourse/bin/concourse-web') do
  its(:content) { should contain '--vault-url' }
  its(:content) { should contain '--vault-client-token' }

  its(:content) { should contain '--prometheus-bind-ip' }
  its(:content) { should contain '--prometheus-bind-port' }
end
