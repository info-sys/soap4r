require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib', 'soap', 'version')

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'soap4r'
  s.summary = "An updated implementation of SOAP 1.1 for Ruby 1.8 and 1.9."
  s.version = SOAP::VERSION::STRING

  s.author = "Laurence A. Lee, Hiroshi NAKAMURA, Fabio Kung, yuhong.wu"
  s.email = "rubyjedi@gmail.com, nahi@ruby-lang.org, fabio.kung@gmail.com"
  s.homepage = "http://wiki.github.com/rubyjedi/soap4r"

  s.add_dependency("httpclient")

  s.has_rdoc = false # disable rdoc generation until we've got more
  s.requirements << 'none'
  s.require_path = 'lib'

  s.executables = [ "wsdl2ruby.rb", "xsd2ruby.rb" ]
  s.files = Dir.glob("{bin,lib,test}/**/*").delete_if { |item| item.match( /\.(svn|git)/ ) }

  # don't reference the test until we see it execute fully and successfully
  # s.test_file = "test/runner.rb"
end
