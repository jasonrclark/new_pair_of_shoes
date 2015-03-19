class Shoes
  class Button
    include Common::UIElement
    include Common::Style
    include Common::Clickable
    style_with :click, :common_styles,
               :dimensions, :state, :text

    def before_initialize(styles, text)
      styles[:text] = text || 'Button'
    end
  end
end
