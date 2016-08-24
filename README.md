# WelcomeKit API documentation

## Prerequisites

You're going to need:

 - **Linux or OS X** — Windows may work, but is unsupported.
 - **Ruby, version 2.0 or newer**
 - **Bundler** — If Ruby is already installed, but the `bundle` command doesn't work, just run `gem install bundler` in a terminal.

## Run

```shell
bundle install
bundle exec middleman server
```

You can now see the docs at http://localhost:4567

## Deploy

```
git co preprod
bundle exec rake deploy:preprod
```

Replace `preprod` with `production` to deploy on `production`.
