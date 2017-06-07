module Webpacker::ManifestRemote
  module ConfigurationExtention
    def manifest_url
      fetch(:manifest_url)
    end
  end
end
