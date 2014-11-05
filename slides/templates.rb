def unfinished(text)
  slide do
    background yellow
    centered_title text,
      size: VERY_BIG_SIZE,
      vertical_align: 'center'
  end
end

def fullscreen_image(path)
  slide do
    fullscreen_image(path)
  end
end

def demo_slide(file)
  slide do
    centered_enormous_text "DEMOS", vertical_align: 'center'
    demo file do |example_app|
      example_app.keypress do |key|
        example_app.quit if key == "w" || key == :escape
      end
    end
  end
end

def main_section(text, opts={})
  opts = {
    size: ENORMOUS_SIZE,
    weight: 'bold',
    margin_top: 200
  }.merge(opts)

  slide do
    background cornflowerblue
    centered_title text, opts
  end
end

def title_slide(text, &block)
  slide do
    centered_title text,
      size: VERY_BIG_SIZE,
      weight: 'bold',
      margin_top: 200
    self.instance_eval(&block) if block
  end
end

def shoes_slide(name, file)
  slide do
    centered_title name,
      size: VERY_BIG_SIZE,
      weight: 'bold',
      margin_top: 120
    center_horizontally image file, margin_top: 30
  end
end

def example_code(title, path, size = 32, demo = true)
  slide do
    centered_title title, margin_bottom: 50

    element = code(path, demo) do |example_app|
      example_app.keypress do |key|
        example_app.quit if key == "w" || key == :escape
      end
    end

    element.font = "Courier"
    element.size = size
  end
end
