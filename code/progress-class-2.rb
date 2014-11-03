def initialize(app, parent, styles = {}, blk = nil)
  @app = app
  @parent = parent

  style_init styles
  @dimensions = Dimensions.new parent, @style
  @parent.add_child self

  @gui = Shoes.configuration.backend_for(
            self,
            @parent.gui)
  @gui.fraction = @style[:fraction]
end
