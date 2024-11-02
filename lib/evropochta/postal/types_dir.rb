module Evropochta
  module Postal
    module TypesDir
      module_function

      def types_dir
        Services::Shared.request("Postal.TypesDir")
      end
    end
  end
end
