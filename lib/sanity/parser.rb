module Sanity

  class Parser

    providers = { 'aws_iam' => Sanity::Provider::AWS::IAM }

    providers.each do |key, value|
      define_method key.to_sym do |name, &block|
        instance = value.new :name => name
        instance.instance_eval &block
        instance
      end
    end

  end

end
