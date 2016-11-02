require './post_party'

class HelloWorldApp
  def self.call(env)
    [200, {}, ['foobar']]
  end
end

run HelloWorldApp
