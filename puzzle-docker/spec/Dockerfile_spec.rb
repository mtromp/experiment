require 'serverspec'
require 'docker-api'
require 'rspec'

describe 'Dockerfile' do
  before(:all) do
    @image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, @image.id
  end

  it 'Verify files exist in opt' do
      expect(file('/opt/Dockerfile-puzzle')).to exist
      expect(file('/opt/README-puzzle.md')).to exist
  end

  describe file('/etc/os-release') do
    it { should contain 'Ubuntu 18.04' }
  end

  describe file('/usr/bin/less') do
    it { should exist }
  end
  describe file('/usr/bin/vi') do
    it { should exist }
  end
  describe file('/usr/bin/git') do
    it { should exist }
  end
  describe file('/usr/bin/sudo') do
    it { should exist }
  end
  describe file('/etc/passwd') do
    it { should contain 'broccoli'}
    it { should contain 'potato'}
    it { should contain 'cheese'}
  end
  describe file('/home/broccoli') do
    it { should be_directory }
  end
  describe file('/home/potato') do
    it { should be_directory }
  end
  describe file('/home/cheese') do
    it { should be_directory }
  end
end
