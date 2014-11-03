def initialize(dsl, parent)
  # ...
  @real = ::Swt::Widgets::ProgressBar.new(
              @parent.real,
              ::Swt::SWT::SMOOTH)
  @real.minimum = 0
  @real.maximum = 100
  # ...
end
