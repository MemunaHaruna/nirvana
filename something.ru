# Should contain an app that responds to call
# and returns a rack-compliant response: an array with the response code, hash of header key-value pairs and a response body that responds to .each

# app = proc do |env|
#   [ 200, { 'Content-Type' => 'text/plain' }, ['I wish you nirvana']]
# end
# run app

class Something
  def call(env)
    puts env
    [ 200, { 'Content-Type' => 'text/plain' }, ['I wish you nirvana, comrade']]
  end
end

run Something.new
