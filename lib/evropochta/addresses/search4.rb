module Evropochta
  module Addresses
    module Search4
      include Config
      extend Services::ApiService
      extend Auth::JWT

      module_function

      def address_by_string(address: "", limit_addresses: 10)
        token = jwt_token
        request_options = {
          address: address,
          limit_addresses: limit_addresses,
          token: token
        }

        response_rows = handle_response(do_request(post_body: post_body(request_options)))
        response_rows.map { |row| { id: row["Address4Id"], name: row["AddressNameFull"] } }
      end

      def post_body(opts)
        {
          CRC: "",
          Packet: {
            JWT: opts[:token],
            MethodName: "Addresses.Search4",
            ServiceNumber: SERVICE_NAME,
            Data: {
              Text: opts[:address],
              TopN: opts[:limit_addresses]
              # Address4Id: ""
            }
          }
        }
      end
    end
  end
end
