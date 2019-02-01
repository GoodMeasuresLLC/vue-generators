# Vue::Generators
vue-generators is an opinionated library for generating Vue components and mixins
for a Rails project.

## Usage

### Help
```bash
rails g vue:component -h
rails g vue:mixin -h
```

### Generate a component

```bash
rails g vue:component ButtonCounter
```

*This will generate `app/javascript/components/ButtonCounter.vue`*
```JavaScript
<template>
  <div>
  </div>
</template>

<script>
export default {
  name: 'ButtonCounter',

  components: {},

  mixins: [],

  props: {
    /*
    property: {
      type: String|Number|Boolean|Array|Object|Date|Function|Symbol,
      default: null,
      required: false
    },
    */
  },

  data() {
    return {
      // field: 'value'
    }
  },

  computed: {
    // computed properties are cached based on their dependencies
    /*
    computedProperty() {
      return 'value'
    },
    */
  },

  methods: {
    // Methods run whenever a re-render happens, their results aren't cached.
    /*
    onClick() {
      this.$emit('click-happened')
    },
    */
  },

  mounted() {
    // Invoked when the component loads, good place to fetch data from the API
  },
}
</script>

<style lang="stylus" scoped>
</style>
```

### Generate a mixin

```bash
rails g vue:mixin MyMixin
```

*This will generate `app/javascript/mixins/MyMixin.js`*

```JavaScript
export default {
  props: {
    /*
    property: {
      type: String|Number|Boolean|Array|Object|Date|Function|Symbol,
      default: null,
      required: false
    },
    */
  },

  data() {
    return {
      // field: 'value'
    }
  },

  computed: {
    // computed properties are cached based on their dependencies
    /*
    computedProperty() {
      return 'value'
    },
    */
  },

  methods: {
    // Methods run whenever a re-render happens, their results aren't cached.
    /*
    onClick() {
      this.$emit('click-happened')
    },
    */
  },
}
```

## Installation
Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'vue-generators'
end
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install vue-generators
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GoodMeasuresLLC/vue-generators. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the vue-generators project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/GoodMeasuresLLC/vue-generators/blob/master/CODE_OF_CONDUCT.md).
