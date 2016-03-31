require 'spec_helper'
 
describe command('ruby -v') do
  its(:stdout) { should match /2\.2\.4/ }
end

