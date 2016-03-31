require 'spec_helper'

describe command("which git") do
  its(:exit_status) { should eq 0 }
end

describe command("which tig") do
  its(:exit_status) { should eq 0 }
end

describe command("which wget") do
  its(:exit_status) { should eq 0 }
end

describe command("which tmux") do
  its(:exit_status) { should eq 0 }
end

describe command("which jq") do
  its(:exit_status) { should eq 0 }
end

describe command("which tree") do
  its(:exit_status) { should eq 0 }
end

describe command("which rbenv") do
  its(:exit_status) { should eq 0 }
end

describe command("which carthage") do
  its(:exit_status) { should eq 0 }
end

describe command("which sbt") do
  its(:exit_status) { should eq 0 }
end

