module Evropochta
  module Postal
    module WeightTypeDir
      module_function

      def call(type: 2)
        Services::Shared.request("Postal.WeightTypeDir", { IsEnable: type })
      end
    end
  end
end
