class Shoes
  class Progress
    include Common::UIElement
    include Common::Style

    attr_reader :app, :parent, :dimensions, :gui

    style_with :common_styles, :dimensions, :fraction
    STYLES = {fraction: 0.0}
