require "dotenv/load"
require_relative "evropochta/version"
require_relative "evropochta/config"
require_relative "evropochta/services/api_service"
require_relative "evropochta/auth/jwt"
require_relative "evropochta/services/shared"

require_relative "evropochta/addresses/search4"
require_relative "evropochta/addresses/get_address_id"

require_relative "evropochta/postal/delivery_type_dir"
require_relative "evropochta/postal/types_dir"
require_relative "evropochta/postal/weight_type_dir"
require_relative "evropochta/postal/offices_in"
require_relative "evropochta/postal/offices_out"
require_relative "evropochta/postal/calculation_tariff"
require_relative "evropochta/postal/put_order"
require_relative "evropochta/postal/change_order"
require_relative "evropochta/postal/order_info"

module Evropochta
end
