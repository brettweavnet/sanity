module Sanity
  module API
    module AWS
      class IAM

        def list
          iam.list
        end

        private

        def iam
          options = { :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
                      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'] }
          @iam ||= Fog::AWS::IAM.new options
        end

      end
    end
  end
end
