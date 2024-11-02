module Evropochta
  module Postal
    module Tracking
      module_function

      def call(track_number: "", postal_item_external_id: "")
        Services::Shared.request(
          "Postal.Tracking",
          { Number: track_number, PostalItemExternalId: postal_item_external_id }
        )
      end
    end
  end
end
