# Webpacker::ManifestRemote

webpacker extention to use uploaded manifest file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'webpacker'
gem 'webpacker-manifest_remote'
```

And then execute:

    $ bundle

## Usage

```yaml
production:
  <<: *default
  manifest_url: 'http://YOUR_ASSET_HOST/packs/manifest.json'
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

