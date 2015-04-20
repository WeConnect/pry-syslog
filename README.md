# PrySyslog

This Pry plugin was originally written to solve an auditing issue in production
instances. Using auditd we're able to log all commands executed, but that only
extends to the application that was executed (which for pry is ruby). Relying
exclusively on .pry_history files for auditing wasn't sufficient.

This gem will log all valid Ruby executed in a pry session to syslog at the
'info' message level on the 'local1' logging facility. Additionally the custom
app name of 'pry_history' will be used. This isn't currently configurable.

This plugin is non-invasive to anything pry related as it makes use of Pry's
native exposed hooks.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pry-syslog'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pry-syslog

## Usage

When this gem is installed anytime Pry gets executed from any context it will
automatically detect and load this plugin. When this happens you will see a
note like the following indicating the session is being logged:

```
[user@host ~/] $ pry
Please note: This interactive session has PrySyslog enabled. All
valid Ruby entered here will be sent to Syslog before being executed
for auditing purposes.
[1] pry(main)>
```

## Contributing

I welcome new ideas, bug fixes and comments from anyone and strive to take no
longer than a week to respond to issues, PRs, or various comments.

All code submitted through PRs will be licensed under this project's MIT
license, if this is a problem please instead open an issue before making your
changes indicating this and I depending on the request I may make the requested
changes myself or attempt to convince about the usage of this license. I want
to avoid a multi-license code base that may impede any individual's usage of
this code.

With all that said, if you'd like to contribute please follow the standard
contribution guide:

1. Review the [Contributor Code of Conduct][1]
2. Fork it ( https://github.com/sstelfox/pry-syslog/fork )
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request against this repo's develop branch

[1]: CODE_OF_CONDUCT.md
