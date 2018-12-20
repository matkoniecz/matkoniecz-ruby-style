# matkoniecz-ruby-style

Shared ruby style config for rubocop.

Inspired by [percy-style](https://github.com/percy/percy-style).

## Installation

    $ gem install matkoniecz-ruby-style

or add this line to your application's Gemfile:

```ruby
gem 'matkoniecz-ruby-style'
```

or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'matkoniecz-ruby-style'
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  matkoniecz-ruby-style:
    - standard_rubocop_config.yml
```

You do not need to include rubocop directly in your application's dependencies. This gem includes a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.

## How to release new gem version

```
rm ./*.gem
gem build ./*.gemspec
gem install --user-install ./*.gem
gem push *.gem
```

Code to install new version locally is also in `reinstall.sh` file.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/matkoniecz/matkoniecz-ruby-style.
