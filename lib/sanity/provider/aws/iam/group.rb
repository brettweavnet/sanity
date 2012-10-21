module Sanity
  module Provider
    module AWS
      module IAM
        class Group

          attr_accessor :validate

          def initialize
            @logger = SanityLogger.new
          end

          def validate(value)
            report :value => value, 
                   :state => iam.list_groups_by_name
          end

          def report(args)
            state = args[:state]
            value = args[:value]
            result = value == state
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
