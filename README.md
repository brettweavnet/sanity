# Sanity

Experimental DSL to validate cloud provider settings.

## Installation

```
gem install sanity
```

## Usage

Working on DSL where state of cloud provider settings can be checked against given configuration:

For example:

```
aws_iam_user do
  validate ['user1', 'user2']
end

aws_iam_group do
  validate ["group1", "group2"]
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
