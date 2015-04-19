def initialize(app, parent, *args)
  # extract blk and styles
  before_initialize(styles, *args)

  @app = app
  @parent = parent
  style_init(styles)
  create_dimensions(*args)
  @parent.add_child self
  @gui = Shoes.backend_for self
  handle_block(blk)
  update_visibility

  after_initialize(*args)
end