module Evropochta
  module Addresses
    module Search4
      module_function

      MAX_LIMIT = 50

      def call(address: "", limit_addresses: 10, address4_id: 0)
        if limit_addresses.zero? || limit_addresses > MAX_LIMIT
          LOG.error("Incorrect limit addresses (#{limit_addresses}). Should be in range 1 to 50")
          return []
        end

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
