def initialize(dsl, parent, type)
  @dsl = dsl
  @parent = parent

  @type = type
  @real = ::Swt::Widgets::Button.new(
            @parent.real, @type)

  yield(@real) if block_given?

  set_size
end