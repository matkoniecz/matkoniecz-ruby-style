# matkoniecz-ruby-style

Shared ruby style config for rubocop.

Inspired by [percy-style](https://github.com/percy/percy-style).

## Installation

    $ gem install matkoniecz-ruby-style

or add this line to your application's Gemfile:

```ruby
gem 'matkoniecz-ruby-style'
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  matkoniecz-ruby-style:
    - standard_rubocop_config.yml
```

## How to release new gem version

```
rm *.gem
gem build *.gemspec
gem install --user-install *.gem
gem push *.gem
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/matkoniecz/matkoniecz-ruby-style.
