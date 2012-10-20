module Sanity
  class CLI
    def start
      p = Sanity::Parser.new
      p.instance_eval File.read "/tmp/sanity"
    end
  end
end
