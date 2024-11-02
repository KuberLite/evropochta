module Evropochta
  module Postal
    module HistoryOrders
      module_function

      def call(opts: {})
        Services::Shared.request(
          "Postal.HistoryOrders",
          {
            DateBegin: opts[:date_begin],
            DateEnd: opts[:date_end],
            Number: opts[:number],
            PostalItemExternalId: opts[:postal_item_external_id],
            Limit: opts[:limit],
            Offset: opts[:offset]
          }
        )
      end
    end
  end
end
