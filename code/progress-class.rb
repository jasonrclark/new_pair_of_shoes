class Shoes
  class Progress
    include Common::UIElement
    include Common::Style

    attr_reader :app, :parent,
                :dimensions, :gui

    style_with :fraction, :common_styles

    STYLES = {fraction: 0.0}
