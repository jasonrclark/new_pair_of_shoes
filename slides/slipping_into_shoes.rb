main_section "SlippingIntoShoes", 'Slipping into Shoes'
tobi_main_section "TobiSlippingIntoShoes", 'Slipping into Shoes'

example_code "ShoesApp", 'Shoes.app', "code/shoes_app.rb"
example_code "Para",     'para',      "code/para.rb" do
  # Sneaky, know we want this bumped up after this point
  Shoes::Para::STYLES[:size] = 48
end

example_code "Button",   'button',    "code/button.rb"
example_code "Edit",     'edit',      "code/edit.rb"

example_code "Stacks", 'Stacks', "code/stacks.rb"
example_code "Flows",  'Flows',  "code/flows.rb"

slide "Drawing" do
  centered_title "Drawing",
    size: Wingtips::ENORMOUS_SIZE,
    weight: 'bold',
    margin_top: 200

  x,y = 100, 100
  @scribble = animate do
    dx, dy = Random.rand(-200..200), Random.rand(-200..200)

    # Don't go off screen
    dx = -dx if x + dx < 0 || x + dx > width
    dy = -dy if y + dy < 0 || y + dy > height

    line x, y, x + dx, y + dy
    x, y = x + dx, y + dy
  end

  on_slide_change do
    @scribble.stop
  end
end

example_code "Rect", 'rect', "code/rect.rb"
example_code "Oval", 'oval', "code/oval.rb"
example_code "Star", 'star', "code/star.rb"
example_code "SimpleFace", 'simple-face', "../shoes4/samples/simple-face.rb", 24
example_code 'BasicApp', 'A basic app', 'basic_app.rb'

tobi_example_code "TobiSimpleFace", 'simple-face', 'simple-face.rb', true


title_slide "WidgetsAndMore", 'Widgets, animations and more!'

