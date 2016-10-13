module Measures
  # Base Class for the different types of loader formats Bonnie Bundler supports.
  class BaseLoaderDefinition

    def self.extract(zip_file, entry, out_dir)
      out_file = File.join(out_dir,Pathname.new(entry.name).basename.to_s)
      zip_file.extract(entry, out_file)
      out_file
    end

  end
end