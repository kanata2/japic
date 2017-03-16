module Japic
  class Section
    attr_reader :sec, :match

    def initialize(year, response_data)
      @sec = response_data['sec']
      @match = response_data['match']&.map do |match_data|
        Match.new(year, match_data)
      end
    end
  end
end
