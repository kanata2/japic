module Japic
  class Rank
    RANK_DATA_TYPES = %w(
      order
      team
      points
      gp
      win
      draw
      lost
      gf
      ga
      gd
    ).map(&:freeze).freeze

    attr_reader *RANK_DATA_TYPES

    def initialize(response_data)
      # rename lank(rank's typo?) to order.
      @order = response_data.delete('lank')

      response_data.each do |k, v|
        instance_variable_set(:"@#{k}", v) if RANK_DATA_TYPES.include?(k)
      end
    end
  end
end
