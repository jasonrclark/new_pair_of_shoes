main_section "SlippingIntoShoes", 'Slipping into Shoes'
main_section "TobiSlippingIntoShoes", 'Slipping into Shoes'

slide "RunningShoes" do
  pack_results = <<~EOS
$ rbenv install jruby-9.1.14.0
Downloading jruby-dist-9.1.14.0-bin.tar.gz...
-> https://dqw8nmjcqpjn7.cloudfront.net/074057e672350a6652d92ccaaa5d517fc7d6b980bce8b947515fb64d114d1651

$ gem install shoes --pre
Building native extensions. This could take a while...
Successfully installed shoes-4.0.0.rc1
1 gem installed

$ shoes your_app.rb
EOS

  center_horizontally para pack_results, font: "Consolas", size: 45, margin_left: 100, margin_top: 100
end

example_code "ShoesApp", 'Shoes.app', "code/shoes_app.rb", demo: true
example_code "Para",     'Text',      "code/para.rb", demo: true

example_code "Button",   'button',    "code/button.rb", demo: true
example_code "Edit",     'edit',      "code/edit.rb", demo: true

example_code "Stacks", 'Stacks', "code/stacks.rb", demo: true
example_code "Flows",  'Flows',  "code/flows.rb", demo: true

slide "Drawing" do
  centered_title "Drawing",
    size: Wingtips::ENORMOUS_SIZE,
    weight: 'bold',
    margin_top: 400

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

example_code "Shapes", 'Drawing', "code/drawing_shapes.rb", demo: true

example_code "Rect", 'rect', "code/rect.rb", demo: true
example_code "Oval", 'oval', "code/oval.rb", demo: true
example_code "Star", 'star', "code/star.rb", demo: true
example_code "SimpleFace", 'simple_face', "code/simple_face.rb", demo: true
example_code 'BasicApp', 'A basic app', 'basic_app.rb', demo: true

demo_slide "Tetris", "code/expert_tetris.rb"
demo_slide "Pong", "code/expert_pong.rb"
demo_slide "Bubbles", "code/simple_random_bubbles.rb"
demo_slide "TicTacToe", "code/simple_tictactoe.rb"

example_code "TobiSimpleFace", 'simple-face', 'simple-face.rb', demo: true

example_code "Styles", 'styles', "code/styles.rb", demo: true

title_slide "WidgetsAndMore", "Widgets, Animations, and More!"
