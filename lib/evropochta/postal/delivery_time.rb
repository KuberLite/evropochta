module Evropochta
  module Postal
    module DeliveryTime
      module_function

      def call(track_number: "", address1_id_reciever: "")
        Services::Shared.request(
          "Postal.DeliveryTime",
          Number: track_number,
          Address1IdReciever: address1_id_reciever,
        )
      end
    end
  end
end
