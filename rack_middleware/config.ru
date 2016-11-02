require './post_party'

class HelloWorldApp
  def self.call(env)
    request = HTTParty.get('http://localhost:3000/widgets?name=foobar')
    puts request

    [200, {}, ['foobar']]
  end
end

run HelloWorldApp
