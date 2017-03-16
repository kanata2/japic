module Japic
  module Response
    class Base
      attr_reader :response

      def initialize(response)
        @response = response
      end

      def body
        response.body
      end

      def status
        response.status
      end

      def year
        body['year']
      end

      def league
        body['league']
      end

      def count
        body['count']
      end
    end
  end
end
