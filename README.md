# Ripsum

Generate a random amount of lorem ipsum text with each pageload. Perfect for stress testing your design.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ripsum'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ripsum

## Usage

```erb
<%= ripsum(100) %>
```

or

```erb
<%# With Variance %>
<%= ripsum(100, 0.5) %>
```

The `ripsum` method takes two arguments. The first argument is the standard word count desired. In the example above, that would be 100 words. 

The second argument is the variance. This argument is optional. _The default value for variance is `0` and can be omitted from the method call_. This would result in the exact number of words you specify with each page load, though the words themselves will continue to be random. If you would like variance in the word output, you must use a floating point decimal with a leading zero. Thus, in the example above, we desire a possible variance of 50%, so we use the decimal `0.5`.

Ripsum takes the standard word count and calculates the minimum and maximum word count based on the variance. Then, it randomly chooses a number in that range and outputs that amount of Lorem ipsum text.

## Configuration

Currently, the only configurable option is the library of words that Ripsum uses. You can pass your own string of words in a configuration block. If you're using Rails, create a file in the `config/initializers` directory, perhaps named `ripsum_initializer.rb` (though it can be named whatever you would like).

```ruby
Ripsum.configure do |config|
    config.library = "Your string of words here. Probably want a few hundred of them. Etc..."
end
```

Make sure to restart your server. It is an initializer file after all.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kyleshevlin/ripsum.

