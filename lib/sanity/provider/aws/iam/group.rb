module Sanity
  module Provider
    module AWS
      module IAM
        class Group

          attr_accessor :validate

          include Sanity::Mixin::Report

          def initialize
            @logger = SanityLogger.new
          end

          def validate(value)
            @running = "Validating AWS IAM groups."
            report :value  => value, 
                   :state  => iam.list_groups_by_name
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
