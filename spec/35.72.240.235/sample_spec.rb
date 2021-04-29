require 'spec_helper'

# Gitがインストールされているか
describe package('git') do
  it { should be_installed }
end

# Nginxがインストールされているか
describe package('nginx') do
  it { should be_installed }
end

# 80番ポートをListenしているか
describe port(80) do
  it { should be_listening }
end

# Nginxが起動中かつ自動起動設定になっているか
describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

# Ruby 2.7.3がインストールされているか
<<<<<<< HEAD
describe command('sudo bash -lc "rbenv versions"') do
  its(:stdout) { should match /2.7.3/ }
end
=======
>>>>>>> parent of c43785e... Rubyインストール追加
