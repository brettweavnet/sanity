module Sanity

  class Parser

    providers = { 'github_repo' => Sanity::Provider::Github::Repo,
                  'iam'         => Sanity::Provider::AWS::IAM }

    providers.each do |key, value|
      define_method key.to_sym do |name, &block|
        instance = value.new :name => name
        instance.instance_eval &block
        instance
      end
    end

  end

end
