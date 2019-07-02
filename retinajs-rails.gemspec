# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = 'retinajs-rails'
  gem.version       = '2.1.3'
  gem.authors       = ["Joshua Jansen"]
  gem.email         = ["joshuajansen88@gmail.com"]
  gem.description   = %q{Adds retina.js assets and image helpers to your Rails app}
  gem.summary       = %q{This gem adds the retina.js assets to your asset pipeline and adds helper methods for rendering retina images.}
  gem.homepage      = "https://github.com/joshuajansen/retinajs-rails"

  gem.files         = `git ls-files`.split($\)
  gem.require_paths = ["lib"]
  gem.license       = 'MIT'
end
