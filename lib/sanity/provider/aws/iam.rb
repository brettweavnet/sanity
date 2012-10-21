module Sanity
  module Provider
    module AWS

      class IAM

        attr_accessor :name, :members

        def initialize(name)
          @name    = name
          puts iam.list
          @members = iam.list
        end

        def members(value)
          puts value == @members
        end

        private

        def iam
          @iam ||= Sanity::API::AWS::IAM.new
        end

      end

    end
  end
end
