# retinajs-rails

Integrates [Retina.js](http://imulus.github.io/retinajs/) with the rails asset pipeline.

Retina.js is an awesome and simple plugin for rendering retina images for displays that support this.

## Installation

Add this line to your application's Gemfile:

    gem "retinajs-rails", "~> 2.1"

And then execute:

    $ bundle

## Usage

To import the js plugin, add the following line to your application.js:

``` ruby
//= require retina
```

### Image helper

Now you will be able to render retina images by using the `image_tag_with_at2x` helper. Example:
```ruby
# Replace:
image_tag "logo.png"

# With:
image_tag_with_at2x "logo.png"
```

This will output the HTML similar to::
```html
<img data-at2x="/assets/logo@2x.png" src="/assets/logo.png">
```

### SCSS mixin

If you'd like to use the SCSS mixin, you need to import `retina.scss`, add the following line to your application.scss:

``` ruby
@import "retina"
```

Now you're able to use the `.at2x` mixin in your stylesheets.

For example:

```scss
.logo {
  @include at2x('logo', 'png', 200px, 100px);
}
```

will compile to:

```scss
.logo {
  background-image: url('/assets/logo.png');
}

@media all and (-webkit-min-device-pixel-ratio: 1.5) {
  .logo {
    background-image: url('/assets/logo@2x.png');
    background-size: 200px 100px;
  }
}
```

For more information about Retina.js, see:
[http://imulus.github.io/retinajs/](http://imulus.github.io/retinajs/)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
