describe subnet('cfn-vpc-public-1a') do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc('cfn-vpc') }
  it { should have_tag('Name').value('cfn-vpc-public-1a') }
  its(:cidr_block) { should eq '10.0.11.0/24' }
  its(:availability_zone) { should eq 'ap-northeast-1a' }
  its(:map_public_ip_on_launch) { should eq true }
end

describe subnet('cfn-vpc-public-1c') do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc('cfn-vpc') }
  it { should have_tag('Name').value('cfn-vpc-public-1c') }
  its(:cidr_block) { should eq '10.0.12.0/24' }
  its(:availability_zone) { should eq 'ap-northeast-1c' }
  its(:map_public_ip_on_launch) { should eq true }
end

describe subnet('cfn-vpc-private-1a') do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc('cfn-vpc') }
  it { should have_tag('Name').value('cfn-vpc-private-1a') }
  its(:cidr_block) { should eq '10.0.21.0/24' }
  its(:availability_zone) { should eq 'ap-northeast-1a' }
  its(:map_public_ip_on_launch) { should eq false }
end

describe subnet('cfn-vpc-private-1c') do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc('cfn-vpc') }
  it { should have_tag('Name').value('cfn-vpc-private-1c') }
  its(:cidr_block) { should eq '10.0.22.0/24' }
  its(:availability_zone) { should eq 'ap-northeast-1c' }
  its(:map_public_ip_on_launch) { should eq false }
end
