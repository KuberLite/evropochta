module Evropochta
  module Config
    SERVICE_NAME = ENV.fetch("SERVICE_NUMBER", nil).freeze
    USER_LOGIN_NAME = ENV.fetch("USER_LOGIN_NAME", nil).freeze
    USER_PASSWORD = ENV.fetch("USER_PASSWORD", nil).freeze
    USER_LOGIN_NAME_TYPE_ID = ENV.fetch("USER_LOGIN_NAME_TYPE_ID", nil).freeze
  end
end
