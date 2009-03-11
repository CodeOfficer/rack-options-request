module Rack
  module Options
    
    class Request
      
      def initialize(app)
        @app = app
      end
      
      def call(env)
        if env["REQUEST_METHOD"] =~ /OPTIONS/
          [200, {"Content-Type" => "text/html"}, ["Microsoft Office Protocol Discovery"]]
        else
          @app.call(env)
        end
      end
            
    end

  end
end