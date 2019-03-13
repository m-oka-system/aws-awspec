describe vpc('cfn-vpc') do
  it { should exist }
  it { should be_available }
  it { should have_route_table('cfn-vpc-public-rt') }
  it { should have_vpc_attribute('enableDnsSupport') }
  it { should have_vpc_attribute('enableDnsHostnames') }
  it { should have_tag('Name').value('cfn-vpc') }
  its(:cidr_block) { should eq '10.0.0.0/16' }
  its(:instance_tenancy) { should eq 'default' }
end