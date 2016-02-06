require "kinescope/version"
require "fileutils"

module Kinescope
  def self.film(reel_name,&block)
    FileUtils.mkdir_p('kinescoped')
    file_name = "kinescoped/#{reel_name}_reel.ml"
    begin
      Marshal.load(File.read(file_name))
    rescue
      data = yield
      File.open(file_name,'w') do |f|
        f.write(Marshal.dump(data))
      end
      data
    end
  end
end
