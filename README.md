# JS Lint Filter #

A filter to lint javascript files using
[JSLint](http://jslint.com/)
(via [ExecJSLint](https://github.com/mintdigital/execjslint)) in
[Nanoc](http://nanoc.ws).

## Installation ##

Drop the file `jslint.rb` into the `lib/filters` folder of
your Nanoc project.

Make sure you have
[ExecJSLint](https://github.com/mintdigital/execjslint)
in your `Gemfile`:

    gem 'execjslint'

If necessary, re-run `bundle install`.

## Usage ##

Use the filter in `compile` rules as necessary. Examples:

    compile '/js/*' do
            # Apply other filters.
            # filter ...

            # Apply jslint filter.
            filter :jslint
        end
    end

If JSLint has nothing to report, the filter produces no output.
If there are any messages from JSLint, they are output to `STDOUT`.

## Notes ##

The filter uses [ExecJSLint](https://github.com/mintdigital/execjslint),
which wraps [JSLint](http://jslint.com/), to
parse javascript files. It uses
[ExecJS](https://github.com/sstephenson/execjs) to find a suitable
javascript interpreter.

## Licence ##

Copyright 2013 ebargtuo. Released under the MIT license.
