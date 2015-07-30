main_section "SlippingIntoShoes", 'Slipping into Shoes'
main_section "TobiSlippingIntoShoes", 'Slipping into Shoes'

example_code "ShoesApp", 'Shoes.app', "code/shoes_app.rb", demo: true
example_code "Para",     'para',      "code/para.rb", demo: true

example_code "Button",   'button',    "code/button.rb", demo: true
example_code "Edit",     'edit',      "code/edit.rb", demo: true

example_code "Stacks", 'Stacks', "code/stacks.rb", demo: true
example_code "Flows",  'Flows',  "code/flows.rb", demo: true

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

example_code "Rect", 'rect', "code/rect.rb", demo: true
example_code "Oval", 'oval', "code/oval.rb"
example_code "Star", 'star', "code/star.rb"
example_code "Shapes", 'shape', 'code/chicken.rb'

example_code "SimpleFace", 'simple-face', "../shoes4/samples/simple-face.rb",
             demo: true
example_code 'BasicApp', 'A basic app', 'basic_app.rb', demo: true

example_code "TobiSimpleFace", 'simple-face', 'simple-face.rb', demo: true


slide "WidgetsAndMore" do
  centered_title "Widgets, Animations and More!",
    size: 100,
    weight: 'bold',
    margin_left: 50,
    margin_right: 50,
    margin_top: 200
end
