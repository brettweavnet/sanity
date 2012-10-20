module Sanity

  class Parser

    providers = { 'github_repo' => Sanity::Provider::Github::Repo}

    providers.each do |key, value|
      define_method key.to_sym do |name, &block|
        instance = value.new name
        instance.instance_eval &block
        instance
      end
    end

  end

end
