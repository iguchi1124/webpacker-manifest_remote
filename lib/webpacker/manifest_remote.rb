require 'webpacker/manifest_remote/version'
require 'webpacker/manifest_remote/configuration_extention'
require 'webpacker/manifest_remote/manifest_extention'

require 'webpacker/configuration'
require 'webpacker/manifest'

Webpacker::Configuration.class_eval do
  extend Webpacker::ManifestRemote::ConfigurationExtention
end

Webpacker::Manifest.class_eval do
  prepend Webpacker::ManifestRemote::ManifestExtention
end
