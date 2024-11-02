module Evropochta
  module Addresses
    module GetAddressId
      module_function

      def get_address_id(address4_id:, address3_name:, address2_name:, address1_name:, porch:, floorx:)
        Services::Shared.request(
          "Addresses.GetAddressId",
          {
            Address4Id: address4_id,
            Address3Name: address3_name,
            Address2Name: address2_name,
            Address1Name: address1_name,
            Porch: porch,
            Floorx: floorx
          }
        )
      end
    end
  end
end
