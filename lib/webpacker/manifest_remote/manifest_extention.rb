require 'open-uri'

module Webpacker
  module ManifestRemote
    module ManifestExtention
      private

      def load
        if Webpacker::Configuration.manifest_url
          JSON.parse(open(Webpacker::Configuration.manifest_url).read)
        else
          return super unless File.exist?(@path)
          JSON.parse(File.read(@path))
        end
      end
    end
  end
end
