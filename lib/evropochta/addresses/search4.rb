module Evropochta
  module Addresses
    module Search4
      module_function

      def call(address: "", limit_addresses: 10, address4_id: 0)
        Services::Shared.request(
          "Addresses.Search4",
          {
            Text: address,
            TopN: limit_addresses,
            Address4Id: address4_id
          }
        )
      end
    end
  end
end
