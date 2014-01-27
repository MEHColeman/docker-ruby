# Docker Ruby

 * Source: https://github.com/bbc-news/docker-ruby
 * Website: https://github.com/bbc-news/docker-ruby

This creates a [Docker](http://docker.io) container for Ruby apps.


## Installation

Clone this repo and run: `docker build -t <yourname>/ruby .`, this should build
the required container for using Ruby within Docker.

This repo would go nicely with my
[vagrant-coreos-docker](https://github.com/sthulb/vagrant-coreos-docker) repo.


## Usage

You can run the resulting image fairly easily with: `docker run -t -i <yourname>/ruby`

This container is designed to be a base for apps

It's even possible to run this concurrently with itself.


## Contributing

If you want to add functionality to this project, pull requests are welcome.

 * Create a branch based off master and do all of your changes with in it.
 * If it you have to pause to add a 'and' anywhere in the title, it should be two pull requests.
 * Make commits of logical units and describe them properly
 * Check for unnecessary whitespace with git diff --check before committing.
 * If possible, submit tests to your patch / new feature so it can be tested easily.
 * Assure nothing is broken by running all the test
 * Please ensure that it complies with coding standards.

**Please raise any issues with this project as a GitHub issue.**


## Credits

 * [@sthulb](https://twitter.com/sthulb)

Docker Ruby is © 2014 BBC News. It is free software and may be redistributed under the terms
specified in the
[LICENCE](https://github.com/bbc-news/docker-ruby/tree/master/LICENCE) file.
