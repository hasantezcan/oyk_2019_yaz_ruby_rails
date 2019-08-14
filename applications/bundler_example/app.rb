require 'rack'
require 'rack/handler/puma'

app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['First app.']]
end

Rack::Handler::Puma.run app
