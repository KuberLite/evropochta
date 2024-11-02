module Evropochta
  module Postal
    module DeliveryTypeDir
      module_function

      def delivery_type_dir(type: 2)
        Services::Shared.request("Postal.DeliveryTypeDir", { IsEnable: type })
      end
    end
  end
end
