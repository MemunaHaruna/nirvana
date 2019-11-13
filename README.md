# Nirvana

A Ruby rack-based application server - for fun and learning.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nirvana'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nirvana

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

`something.ru` contains a sample ruby rack-compliant app. Pass `something.ru` to the app using `bundle exec nirvana ./something.ru` to test.

## Improvements
- Add tests
- Create an actual test ruby app with a few basic middlewares to be served by this server
- Prettify logs

## Resources used
- [https://medium.com/launch-school/demystifying-ruby-applications-ruby-application-servers-and-web-servers-c3d0fd415cb3]

- [https://ruslanspivak.com/lsbaws-part1/]

- [https://docs.ruby-lang.org/en/2.1.0/Socket.html]

- [https://ksylvest.com/posts/2016-10-04/building-a-rack-web-server-in-ruby] - Most of the code snippets were copied from here and modified slightly. No shame in copy-and-paste, eh?

- [https://stackoverflow.com/questions/4113299/ruby-on-rails-server-options/4113570#4113570]

- [https://www.sitepoint.com/ruby-command-line-interface-gems/]

- [https://github.com/rack/rack/wiki/(tutorial)-rackup-howto]

- [https://thoughtbot.com/upcase/videos/rack]

- [https://www.justinweiss.com/articles/a-web-server-vs-an-app-server/]

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MemunaHaruna/nirvana. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nirvana project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/MemunaHaruna/nirvana/blob/master/CODE_OF_CONDUCT.md).
