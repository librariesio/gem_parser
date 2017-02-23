# [GemParser](https://libraries.io/github/librariesio/gem_parser)

:warning: This repository has been replaced with [Bibliothecary](https://github.com/librariesio/bibliothecary) and will not be updated anymore :warning:

Sinatra app for extracting dependencies from `Gemfile`, `*.gemspec` and `Podfile` files for [Libraries.io](https://libraries.io) over http.

It uses a [fork](https://github.com/librariesio/gemnasium-parser) of the [gemnasium-parser](https://github.com/gemnasium/gemnasium-parser) to do the heavy lifting of parsing the files.

## Development

Source hosted at [GitHub](http://github.com/librariesio/gem_parser).
Report issues/feature requests on [GitHub Issues](http://github.com/librariesio/gem_parser/issues). Follow us on Twitter [@librariesio](https://twitter.com/librariesio). We also hangout on [Gitter](https://gitter.im/librariesio/gem_parser).

### Getting Started

New to Ruby? No worries! You can follow these instructions to install a local server, or you can use the included Vagrant setup.

#### Installing a Local Server

First things first, you'll need to install Ruby 2.3.1. I recommend using the excellent [rbenv](https://github.com/sstephenson/rbenv),
and [ruby-build](https://github.com/sstephenson/ruby-build)

```bash
rbenv install 2.3.1
rbenv global 2.3.1
```

## Tests

Tests can be ran with `bundle exec rake`

## Contributors

Over 2 different people have contributed to the project, you can see them all here: https://github.com/librariesio/gem_parser/graphs/contributors

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Add documentation if necessary.
 * Commit, do not change procfile, version, or history.
 * Send a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2016 Andrew Nesbitt. See [LICENSE](https://github.com/librariesio/gem_parser/blob/master/LICENSE) for details.
