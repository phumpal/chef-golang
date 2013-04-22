require File.expand_path('../support/helpers', __FILE__)

describe 'chef-golang::default' do
  include Helpers::Golang

  it 'can process erlang code with the erl command ' do
    erl = shell_out("go")
    assert_includes(erl.stdout,'Go is a tool for managing Go source code.')
  end
end