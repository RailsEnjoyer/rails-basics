require 'socket'

server = TCPServer.new('localhost', 3000)
puts "Server is started at: http://localhost:3000"

loop do
  client = server.accept
  request_line = client.gets
  puts "Request: #{request_line}"

  path = request_line.split[1]

  case path
  when "/hello"
    response_body = "<h1>Hello, friend!</h1>"
    content_type = "text/html"
  when "/bye"
    response_body = "<h1>Goodbye, friend!</h1>"
    content_type = "text/html"
  else
    response_body = "Page not found"
    content_type = "text/plain"
  end

  client.print "HTTP/1.1 200 OK\r\n" +
               "Content-Type: #{content_type}\r\n" +
               "Content-Length: #{response_body.bytesize}\r\n" +
               "Connection: close\r\n"

  client.print "\r\n"
  client.print response_body
  client.close
end
