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

To construct queries, pass query parameters as keyword arguments to `Datamuse::words`.

```ruby
require('rubymuse')

# Find words with a meaning similar to the word 'programming'
Datamuse.words(ml: 'programming')

# Find words with a meaning similiar to the word 'programming' and related to the topic 'television'
Datamuse.words(ml: 'programming', topics: 'television') 

# Find words that rhyme with 'orange'
Datamuse.words(rel_rhy: 'orange')

# Find suggested words based on partial string 'prog'
Datamuse.sug(s: 'prog')

# Find suggested words in Spanish based on partial string 'prog'
Datamuse.sug(s: 'prog', v: 'es')

```

See [Datamuse API](http://www.datamuse.com/api/) for full documentation on Datamuse's query parameters and options.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mosegontar/rubymuse.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
