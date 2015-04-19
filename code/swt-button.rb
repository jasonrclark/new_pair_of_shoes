class Button < SwtButton
  def initialize(dsl, parent)
    super(dsl, parent,
          ::Swt::SWT::PUSH) do |button|
      button.set_text @dsl.text
    end
  end
end
