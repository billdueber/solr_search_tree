# SolrSearchTree

A search tree supporting binary operators suitable as an intermediate format for
transforming user input into a format suitable to send to a search engine, with
an emphasis on Solr as a target.

## Examples

```ruby

keyword_hello = SolrSearchTree.new(field: :keyword, term: "Hello")
keyword_world = SolrSearchTree.new(field: :keyword, term: "World")

# Combine with &,| to mean AND and OR
h_and_w =  keyword_hello & keyword_world
puts h_and_w
# => keyword:(Hello and World)

# You can also just throw another term on as a plain string
h_or_w = keyword_hello | "world"
puts h_or_w
# => keyword:(Hello OR World)



```
 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'solr_search_tree'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install solr_search_tree

## Usage

## Development

After checking out the repo, run `bundle install` to install dependencies. 
Then, run `rake spec` to run the tests. 

To install this gem onto your local machine, run `bundle exec rake install`. 
To release a new version, update the version number in `version.rb`, 
and then run `bundle exec rake release`, 
which will 
  create a git tag for the version,
   push git commits and tags, 
   and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/billdueber/solr_search_tree.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
