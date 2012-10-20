module Sanity
  module Provider
    module Github
      class Repo

        attr_accessor :name, :members

        def initialize(name)
          @name = name
          @members = ['weaver']
        end

        def test(value)
          puts value == true
        end

        def members(value)
          puts value == @members
        end
      end
    end
  end
end
