Evropochta Ruby Client
=================

A Ruby client for the Evropochta (https://evropochta.by/) API.

<img src="https://avatars.mds.yandex.net/get-altay/14020851/2a00000191f166d6c586803a961a45011a4d/orig" alt="Evropochta Logo" width="300" height="200">

## Installation

Add to Gemfile.

```
gem 'evropochta'
```

Run `bundle install`.

## Usage
1. Add gem to your project
2. Get your SERVICE_NUMBER and LOGIN_NAME/PASSWORD:
   - SERVICE_NUMBER provides by Evropochta manager.
   - LOGIN_NAME/PASSWORD - credentials for your bussines account.
3. Create a .env file

```bash
API_URL=
API_PORT=
SERVICE_NUMBER=
USER_LOGIN_NAME=
USER_PASSWORD=
USER_LOGIN_NAME_TYPE_ID=<1 
```






## Quick start

```
gem install evropochta
```

```ruby
require "evropochta"
```

```ruby
gem "evropochta"
```

## Support

If you want to report a bug, or have ideas, feedback or questions about the gem, [let me know via GitHub issues](https://github.com/mattbrictson/gem/issues/new) and I will do my best to provide a helpful answer. Happy hacking!

## License

The gem is available as open source under the terms of the [MIT License](LICENSE.txt).

## Code of conduct

Everyone interacting in this project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).

## Contribution guide

Pull requests are welcome!
