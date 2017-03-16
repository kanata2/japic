module Japic
  module Response
    class Schedule < Base
      def section_all
        body['sec']
      end

      def section_of(n)
        section = section_all.fetch(n - 1)

        ::Japic::Section.new(year, section)
      end
    end
  end
end
