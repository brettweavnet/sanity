module Sanity
  module Provider
    module AWS
      module IAM
        class User

          attr_accessor :validate

          def initialize
            @logger = SanityLogger.new
          end

          def validate(value)
            report :value => value, 
                   :state => iam.list_users_by_name
          end

          def report(args)
            state = args[:state]
            value = args[:value]
            result = value == state
            @logger.info "Current: #{state}"
            @logger.info "Valid: #{value}"
            @logger.info "#{result.to_s}" 
          end

          private

          def iam
            @iam ||= Sanity::API::AWS::IAM.new
          end

        end
      end
    end
  end
end