module Sanity
  class CLI
    def start
      p = Sanity::Parser.new
      Dir.entries("/tmp/sanity/resources").select {|s| s != '.' && s != '..'}.each do |file|
        p.instance_eval File.read "/tmp/sanity/resources/#{file}"
      end
    end
  end
end
