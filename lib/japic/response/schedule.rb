module Japic
  module Response
    class Schedule < Base
      def section_all
        body.dig('sec')
      end

      def section(n)
        section_all.fetch(n-1)
      end
    end
  end
end
