require "json"
require "net/http"
require "uri"

module Evropochta
  module Services
    module ApiService
      include Config

      module_function

      def api_url
        URI("#{ENV.fetch('API_URL', nil)}:#{ENV.fetch('API_PORT', 80)}/Json")
      end

      def do_request(opts)
        uri = api_url
        request = Net::HTTP::Post.new(uri)
        request["Content-Type"] = "application/json"
        request_body = opts[:post_body]

        request.body = request_body.to_json
        Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
          http.request(request)
        end
      end

      def handle_response(response)
        case response
        when Net::HTTPSuccess
          json_response = JSON.parse(response.body)
          json_response["Table"]
        else
          raise "Error fetching: #{response.message}"
        end
      end
    end
  end
end
