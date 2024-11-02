module Evropochta
  module Postal
    module OfficesIn
      module_function

      def call(type_sender: 2)
        Services::Shared.request("Postal.OfficesIn", { TypeSender: type_sender })
      end
    end
  end
end
