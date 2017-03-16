module Japic
  module Response
    class Ranking < Base
      def table
        body['tables']
      end

      def rank_of(n)
        rank = table.fetch(n - 1)

        ::Japic::Rank.new(rank)
      end
    end
  end
end
