class Middleware
  def initialize(app)
    @app = app
  end

  def call(env)
    request = Rack::Request.new env
    if !request.params.include?('name')
      [200, {}, ['tell me your name!']]
    else
      @app.call env
    end
  end
end
