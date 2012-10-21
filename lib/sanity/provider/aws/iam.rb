module Sanity
  module Provider
    module AWS

      class IAM

        attr_accessor :name, :members

        def initialize(name)
          @name = name
        end

        def members(value)
          case @name
          when 'users'
            report(value == iam.list_users)
          when 'groups'
            report(value == iam.list_groups)
          end
        end

        def report(result)
          puts result
        end

        private

        def iam
          @iam ||= Sanity::API::AWS::IAM.new
        end

      end

    end
  end
end
