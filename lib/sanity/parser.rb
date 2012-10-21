module Sanity

  class Parser

    providers = { 'aws_iam_user'  => Sanity::Provider::AWS::IAM::User,
                  'aws_iam_group' => Sanity::Provider::AWS::IAM::Group } 

    providers.each do |key, value|
      define_method key.to_sym do |&block|
        instance = value.new
        instance.instance_eval &block
        instance
      end
    end

  end

end
