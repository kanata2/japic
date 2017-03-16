module Japic
  class Match
    MATCH_DATA_TYPES = %w(
      date
      kickofftime
      home
      score
      away
      place
      note
    ).map(&:freeze).freeze

    attr_reader *MATCH_DATA_TYPES

    def initialize(year, match_data)
      @year = year
      match_data.each do |k, v|
        instance_variable_set(:"@#{k}", v) if MATCH_DATA_TYPES.include?(k)
      end
    end

    def datetime
      @datetime ||= DateTime.parse("#{@year}/#{@date} #{@kickofftime} JST")
    end
  end
end
