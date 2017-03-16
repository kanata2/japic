module Japic
  module Response
    class Ranking < Base
      def table
        body.dig('tables')
      end

      def order(n)
        table.fetch(n-1)
      end
    end
  end
end
