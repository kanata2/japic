# Japic
[Jleague API (unofficial)](http://labs.s-koichi.info/blog/archives/2014/02/08/1759-602.php) Client library implemented by ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'japic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install japic

## Usage

```ruby
client = Japic::Client.new

# if you want schedule( or result)
schedule = client.schedule(year: 2017, league: 'j1')

# or if you want ranking of n th section
ranking = client.ranking(year: 2017, league: 'j2', section: 1)
```

## TODO

- [ ] error handling
- [x] prepare an interface easy to use
- [ ] document of usage
- [ ] test

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/naoki-k/japic
