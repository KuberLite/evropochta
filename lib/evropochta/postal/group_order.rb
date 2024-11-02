module Evropochta
  module Postal
    module GroupOrder
      module_function

      def call(postal_item_external_ids: [], serial_numbers: [], date_transfer: "")
        Services::Shared.request(
          "Postal.GroupOrder",
          {
            PostalItemExternalId: postal_item_external_ids,
            SerialNumber: serial_numbers,
            DateTransfer: date_transfer
          }
        )
      end
    end
  end
end
