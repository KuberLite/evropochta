module Evropochta
  module Auth
    module JWT
      include Config
      extend Services::ApiService

      module_function

      def jwt_token
        @jwt_token ||= handle_response(do_request(post_body: jwt_post_body)).dig(0, "JWT")
      end

      def jwt_post_body
        {
          CRC: "",
          Packet: {
            JWT: "null",
            MethodName: "GetJWT",
            ServiceNumber: SERVICE_NAME,
            Data: {
              LoginName: USER_LOGIN_NAME,
              Password: USER_PASSWORD,
              LoginNameTypeId: USER_LOGIN_NAME_TYPE_ID
            }
          }
        }
      end
    end
  end
end
