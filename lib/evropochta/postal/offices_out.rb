module Evropochta
  module Postal
    module OfficesOut
      module_function

      def call
        Services::Shared.request("Postal.OfficesOut")
      end
    end
  end
end
