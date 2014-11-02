def unfinished(text)
  slide do
    background yellow
    centered_title text,
      size: VERY_BIG_SIZE,
      vertical_align: 'center'
  end
end

def main_section(text)
  slide do
    background cornflowerblue
    centered_title text,
      size: ENORMOUS_SIZE,
      weight: 'bold',
      margin_top: 200
  end
end

def example_code(title, path)
  slide do
    centered_title title, margin_bottom: 50

    element = code(path, true) do |example_app|
      example_app.keypress do |key|
        example_app.quit if key == "w"
      end
    end

    element.font = "Courier"
    element.size = 32
  end
end
