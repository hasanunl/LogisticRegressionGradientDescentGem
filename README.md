# Logisticregressiongradientdescent

Logistic Regression Gradient Descent Gem is a ruby gem to use for your basic classification problems. This gem uses Sciruby's Nmatrix library to work.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'logisticregressiongradientdescent'
```
If you don't already have Nmatrix and Sciruby , install like this:
```ruby
gem install nmatrix
gem install sciruby
```
Sciruby is a metagem, so adding only Sciruby to your gem file will be enough to use Nmatrix:
```ruby
gem 'sciruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logisticregressiongradientdescent

## Usage

To use this gem you need to create a object for it:
```ruby
gem_test =  LogisticRegressionGradientDescent.new
```

Then you have to create Nmatrix type matrix to use with the object methods. This will be hopefully fixed to work with different data types :
```ruby
data = N.new([2,6], [12,15,17,18,19,20,1,1,0,1,1,0]).transpose
x = N.new([6,3])
x[:*,1] = data.col(0)
x[:*,0] = N.ones([6,1])
y = data.col(1)
```
Then you can use the fit method for training. This method will take 4 inputs. First is input variables, next is output variables. This method will return you the theta values :
```ruby
theta = gem_test.fit(x,y)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hasanunl/logisticregressiongradientdescent. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Logisticregressiongradientdescent project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hasanunl/logisticregressiongradientdescent/blob/master/CODE_OF_CONDUCT.md).
