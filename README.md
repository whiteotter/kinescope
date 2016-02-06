# Kinescope

Need to run a script with large static input files that involves time_consuming_calculations? Try out Kinescope:

```ruby
def time_consuming_calculation
  sleep 1
  true
end

test = Kinescope.film :big_data do
  # 'film' gigantic data here
  result = []
  File.foreach('thousand_line_file.txt') do |line|
    result << line if time_consuming_calculation
  end
  result
end
 # this script will take a thousand seconds to run the first time
 # but the results will be saved and used for any subsequent script runs

```

The kinescope "reel" is kept in the newly generated `kinescoped` directory. In the event of a change to the filming block or input file(s), delete any film reel from the `kinescoped` directory to re-kinescope the data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kinescope'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kinescope

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/whiteotter/kinescope.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

