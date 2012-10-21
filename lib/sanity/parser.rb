module Sanity

  class Parser

    providers = { 'aws_iam_user'   => Sanity::Provider::AWS::IAM::Users,
                  'aws_iam_groups' => Sanity::Provider::AWS::IAM::Groups } 

    providers.each do |key, value|
      define_method key.to_sym do |name, &block|
        instance = value.new :name => name
        instance.instance_eval &block
        instance
      end
    end

  end

end
