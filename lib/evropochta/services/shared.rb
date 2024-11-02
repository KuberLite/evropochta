module Evropochta
  module Services
    module Shared
      include Config
      extend ApiService
      extend Auth::JWT

      module_function

      def request(method_name, data={})
        token = jwt_token
        request_options = {
          token: token,
          data: data,
          method_name: method_name
        }

        handle_response(do_request(post_body: post_body(request_options)))
      end

      def post_body(opts)
        {
          CRC: "",
          Packet: {
            JWT: opts[:token],
            MethodName: opts[:method_name],
            ServiceNumber: SERVICE_NUMBER,
            Data: opts[:data]
          }
        }
      end
    end
  end
end
