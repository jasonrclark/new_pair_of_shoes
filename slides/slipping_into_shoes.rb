main_section "SlippingIntoShoes", 'Slipping into Shoes'
tobi_main_section "TobiSlippingIntoShoes", 'Slipping into Shoes'

tobi_example_code "ShoesApp", 'Shoes.app', "code/shoes_app.rb", true
tobi_example_code "Para",     'para',      "code/para.rb", true

tobi_example_code "Button",   'button',    "code/button.rb", true
tobi_example_code "Edit",     'edit',      "code/edit.rb", true

tobi_example_code "Stacks", 'Stacks', "code/stacks.rb", true
tobi_example_code "Flows",  'Flows',  "code/flows.rb", true

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

tobi_example_code "Rect", 'rect', "code/rect.rb", true
tobi_example_code "Oval", 'oval', "code/oval.rb"
tobi_example_code "Star", 'star', "code/star.rb"
tobi_example_code "SimpleFace", 'simple-face', "../shoes4/samples/simple-face.rb",true
tobi_example_code 'BasicApp', 'A basic app', 'basic_app.rb', true

tobi_example_code "TobiSimpleFace", 'simple-face', 'simple-face.rb', true


title_slide "WidgetsAndMore", 'Widgets, animations and more!'

