module Sanity
  module Provider
    module Github

      class Repo

        attr_accessor :name, :members

        def initialize(name)
          @name    = name
          @members = ['weaver']
        end

        def members(value)
          value == @members
        end

      end

    end
  end
end
