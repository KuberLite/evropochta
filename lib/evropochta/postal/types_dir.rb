module Evropochta
  module Postal
    module TypesDir
      module_function

      def call
        Services::Shared.request("Postal.TypesDir")
      end
    end
  end
end
