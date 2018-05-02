# JapaneseNumbers

Parser for Japanese numbers like "123万4567" or "5000兆円".

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'japanese_numbers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install japanese_numbers

## Usage

```ruby
JapaneseNumbers::Parser.parse("5000兆円")  #=> 5000000000000000
```

## Development

After checking out the repo, run `bundle install` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/osyoyu/japanese_numbers.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
