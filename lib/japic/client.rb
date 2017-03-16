require 'faraday'
require 'faraday_middleware'

module Japic
  class Client
    def connection
      @connection ||=
        ::Faraday.new(url: URL::BASE) do |conn|
          conn.response :json, content_type: /\bjson$/
          conn.adapter  Faraday.default_adapter
        end
    end

    def schedule(year:, league:)
      response(
        '/api/jleague/V2/schedule',
        Response::Schedule,
        year,
        league
      )
    end

    def ranking(year:, league:, section:)
      response(
        '/api/jleague/V2/standing',
        Response::Ranking,
        year,
        league,
        section
      )
    end

    private

    def response(path, return_class, year, league, section = nil)
      parameters = {
        year: year,
        league: league,
        sec: section
      }.delete_if { |_k, v| v.nil? }

      response = connection.get(path, parameters)
      return_class.new(response)
    end
  end
end
