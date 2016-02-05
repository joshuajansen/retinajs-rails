require "image_helper"
ActionView::Base.send :include, ImageHelper

module RetinaJs
  class Engine < ::Rails::Engine
  end
end
