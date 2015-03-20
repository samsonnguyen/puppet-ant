require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'ant' do
  it do
    should include_class('homebrew')

    should contain_homebrew__formula('ant')

    should contain_package('boxen/brews/ant').with({
      :ensure => '1.9.4',
      :provider => 'homebrew',
    })

  end
end
