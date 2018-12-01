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
end
