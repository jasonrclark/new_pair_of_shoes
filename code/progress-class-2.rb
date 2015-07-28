def initialize(app, parent, styles = {}...)
  #...

  style_init styles
  @dimensions = Dimensions.new parent, @style
  @parent.add_child self

  @gui = Shoes.configuration.backend_for(
            self, @parent.gui)

  @gui.fraction = @style[:fraction]
end
