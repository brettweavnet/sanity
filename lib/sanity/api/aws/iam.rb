module Sanity
  module API
    module AWS
      class IAM

        def list_users
          iam.list_users.body['Users'].map {|u| u['UserName']}
        end

        def list_groups
          iam.list_groups.body['Groups'].map {|g| g['GroupName']}
        end

        private

        def iam
          o = { :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
                :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'] }
          @iam ||= Fog::AWS::IAM.new o
        end

      end
    end
  end
end
