module Sanity
  module Provider
    module AWS

      class IAM

        attr_accessor :name, :members

        def initialize(name)
          @name   = name
          @logger = SanityLogger.new
        end

        def members(value)
          case @name
          when 'users'
            report(value == iam.list_users_by_name)
          when 'groups'
            report(value == iam.list_groups_by_name)
          end
        end

        def report(result)
          @logger.info result
        end

        private

        def iam
          @iam ||= Sanity::API::AWS::IAM.new
        end

      end

    end
  end
end
