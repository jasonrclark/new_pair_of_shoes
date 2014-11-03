def heart(x, y, opts={})
  stroke = opts.fetch(:stroke, red)
  fill   = opts.fetch(:fill, red)
  width  = opts.fetch(:width, 200)
  height = opts.fetch(:height, 200)

  shape x, y, :stroke => stroke, :fill => fill do
    move_to 0,             height / 4
    line_to width / 4,     0
    line_to width / 2,     height / 4
    line_to 3 * width / 4, 0
    line_to width,         height / 4
    line_to width / 2,     height
    line_to 0,             height /4
  end
end
