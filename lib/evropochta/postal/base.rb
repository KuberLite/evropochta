module Evropochta
  module Postal
    module Base
      def validate_required_keys(opts)
        missing_keys = self::REQUIRED_KEYS.select { |key| opts[key].nil? }
        return unless missing_keys.any?

        raise ArgumentError, "Missing required keys: #{missing_keys.map(&:to_s).join(', ')}"
      end
    end
  end
end
