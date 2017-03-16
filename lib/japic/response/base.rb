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
        body.dig('year')
      end

      def league
        body.dig('league')
      end

      def count
        body.dig('count')
      end
    end
  end
end
