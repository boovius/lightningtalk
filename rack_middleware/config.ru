require './post_party'
require 'jwt'

class HelloWorldApp
  def self.call(env)
    #payload = {current_user_email: current_user.email}
    #@token = JWT.encode payload, 'new-secret', 'HS256'

    request = HTTParty.get('http://localhost:3000/widgets?name=foobar')
    puts request

    [200, {}, ['foobar']]
  end
end

run HelloWorldApp
