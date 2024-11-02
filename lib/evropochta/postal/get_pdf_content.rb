module Evropochta
  module Postal
    module GetPdfContent
      module_function

      def call(serial_numbers: [], postal_item_external_id: [])
        external_ids = postal_item_external_id.map { |external_id| { PostalItemExternalId: external_id } }
        numbers = serial_numbers.map { |serial_number| { SerialNumber: serial_number } }
        Services::Shared.request(
          "Postal.GetPDFContent",
          {
            SerialNumber: numbers,
            PostalItemExternalId: external_ids
          }
        )
      end
    end
  end
end
