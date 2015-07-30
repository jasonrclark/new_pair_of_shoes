def unfinished(name, text)
  slide(name) do
    background yellow
    centered_title text,
      size: Wingtips::VERY_BIG_SIZE,
      vertical_align: 'center'
  end
end

def demo_slide(name, file)
  title_slide(name, "DEMOS") do
    demo file do |example_app|
      example_app.keypress do |key|
        example_app.quit if key == "w" || key == :escape
      end
    end
  end
end

DEFAULT_MAIN_SECTION_OPTIONS = {
  size:       Wingtips::ENORMOUS_SIZE,
  weight:     'bold',
  margin_top: 200
}.freeze

def main_section(name, text, opts={})
  options = _merge_template_options DEFAULT_MAIN_SECTION_OPTIONS,
                                    :main_section,
                                    opts

  slide(name) do
    background forestgreen
    centered_title text, options
  end
end

#DEFAULT_TITLE_SLIDE_OPTIONS = {
  #size:           Wingtips::ENORMOUS_SIZE,
  #vertical_align: 'center',
  #weight:         'bold'
#}.freeze

#def title_slide(name, text, opts={}, &block)
  #options = _merge_template_options DEFAULT_TITLE_SLIDE_OPTIONS,
                                    #:title_slide,
                                    #opts

  #slide(name) do
    #centered_title text, options
    #self.instance_eval(&block) if block
  #end
#end

def shoes_slide(name, title, file)
  slide(name) do
    centered_title title,
      size: Wingtips::VERY_BIG_SIZE,
      weight: 'bold',
      margin_top: 120
    center_horizontally image file, margin_top: 30
  end
end

DEFAULT_EXAMPLE_CODE_OPTIONS = {
  code: {
    font: 'Courier',
    size: 32
  },
  title: {
    margin_bottom: 50
  },
  demo: false
}.freeze

def example_code(name, title, path, opts = {}, &blk)
  options = _merge_template_options DEFAULT_EXAMPLE_CODE_OPTIONS,
                                   :example_code,
                                   opts

  slide(name) do
    centered_title title, options[:title]

    code(path, options[:demo], options[:code]) do |example_app|
      example_app.keypress do |key|
        example_app.quit if key == "w" || key == :escape
      end
    end

    blk.call if blk
  end
end

def fullscreen_image_slide(name, path)
  slide(name) do
    fullscreen_image path
  end
end

# merge order is = defaults, template, custom
def _merge_template_options(default_options, template_key, custom_options = {})
  template_options = configuration.template_options.fetch template_key, {}
  options = Wingtips::HashUtils.deep_merge(default_options, template_options)
  Wingtips::HashUtils.deep_merge(options, custom_options)
end
