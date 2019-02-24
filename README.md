# Twine2jekyll

Twine2jekyll takes a [Twine](https://twinery.org) file, splits it apart, and generates a Jekyll site from it.

This is really useful if you decide that your Twine story would actually work better as a static site with separate pages for each passage.

This won't copy across any custom CSS or Javascript, nor will it handle any clever logic within your Twine file.  This functionality may or may not be added in the future.

## Installation

Install it yourself as:

    $ gem install twine2jekyll

## Usage

    $ twine2jekyll twine_story.html output_directory
    Generated a Jekyll site in /Users/aka03/tmp/twine2jekyll, cd to that directory and then run 'jekyll s'
    $ cd /Users/aka03/tmp/twine2jekyll && jekyll s

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wheresalice/twine2jekyll. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Twine2jekyll project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/wheresalice/twine2jekyll/blob/master/CODE_OF_CONDUCT.md).
