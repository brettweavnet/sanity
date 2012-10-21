require "sanity/mixin/report"

module Sanity
  module Mixin
    module Report
      def report(args)
        state  = args[:state]
        value  = args[:value]
        logger = args[:logger]
        result = value == state

        @logger.debug "Current: #{state}"
        @logger.debug "Valid: #{value}"
        @logger.info "#{result.to_s}"
      end
    end
  end
end
