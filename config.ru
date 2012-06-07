require 'pp'

app = Proc.new do |env|
  pp env
  pp ENV

  [200, {"Content-Type" => "text/plain"}, ["It works! (#{RUBY_DESCRIPTION})"]]
end

run app