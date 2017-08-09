# Rubymuse

Rubymuse is a tiny api wrapper for the [Datamuse API](http://www.datamuse.com/api/).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubymuse'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubymuse

## Usage

Currently, Rubymuse only supports Datamuse's primary endpoint: /words. To construct queries, pass query parameters as keyword arguments to `Datamuse#words`.

```ruby
require('rubymuse')

# Find words with a meaning similar to the word 'programming'.
Datamuse.words(ml: `programming`)

# Find words with a meaning similiar to the word 'programming' and related to the topic 'television'
Datamuse.words(ml: 'programming', topics: 'television') 

# Find words that rhyme with 'orange'
Datamuse.words(rel_rhy: 'orange')

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mosegontar/rubymuse.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
