require "ripsum/version"
require "ripsum/configuration"
require "ripsum/ripsum_helper"
require "ripsum/railtie"

module Ripsum
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
