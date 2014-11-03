startup_options title: "What up yo?",
                height: 768,
                width: 1024,
                fullscreen: false

slide do
  background cornflowerblue
  centered_title 'Get Your Shoes Back On',
    size: 120,
    weight: 'bold',
    margin_top: 100
  para "@jasonrclark",
    align: 'center',
    size: 32,
    margin_top: 30
  image "images/shoes.png",
    left:450,
    margin_top: 30
end

slide do
  app = Shoes.apps.first
  app.keypress do |key|
    if key == "\n"
      if @chicken
        @chicken.each do |chick|
          chick.remove
        end
        @chicken = nil
      else
        @chicken = []
        my_left, my_bottom = 800, 768

        fill white
        @chicken << shape(left: 0, top:0) do
          move_to my_left, my_bottom
          line_to my_left + 33, my_bottom - 120
          line_to my_left + 66, my_bottom
          line_to my_left, my_bottom
        end

        fill orange
        @chicken << shape(left: 0, top: 0) do
          move_to my_left, my_bottom - 120
          line_to my_left - 35, my_bottom - 115
          line_to my_left, my_bottom - 110
          line_to my_left, my_bottom - 120
        end

        fill red
        @chicken << shape(left: 0, top: 0) do
          move_to my_left, my_bottom - 120
          line_to my_left + 20, my_bottom - 165
          line_to my_left + 25, my_bottom - 150
          line_to my_left + 35, my_bottom - 170
          line_to my_left + 45, my_bottom - 150
          line_to my_left + 55, my_bottom - 167
          line_to my_left + 60, my_bottom - 130
        end

        @chicken << oval(my_left, my_bottom - 150, 66, 66, fill: white)
        @chicken << oval(my_left + 20, my_bottom - 130, 10, 10, fill: ivory)
        @chicken << oval(my_left + 20, my_bottom - 127, 5, 5, fill: blue)

        Thread.new { puts `afplay #{File.expand_path("~/source/get_your_shoes_back_on/sounds/chicken.mp3")}` }
      end
    end
  end
  centered_huge_text "What's", weight: 'bold', margin_top: 120
  image "images/shoes.png", left: 450, top: 230
  centered_huge_text "?", weight: 'bold', margin_top: 170
end

slide do
  centered_enormous_text "DEMOS", vertical_align: 'center'
end

demo_slide "../shoes4/samples/expert-minesweeper-adjusted.rb"
demo_slide "../shoes4/samples/expert-snake.rb"
demo_slide "../shoes4/samples/good-clock.rb"

slide do
  fullscreen_image "images/_why.png"
  para "_why", left: 100, top: 100, size: VERY_BIG_SIZE
end

fullscreen_image "images/hacketyhack.png"

slide do
  background grey
end

shoes_slide "Green Shoes\nGtk", "images/shoes.green.png"
shoes_slide "Blue Shoes\nQt", "images/shoes.blue.png"
shoes_slide "Brown Shoes\nSWT/Swing", "images/shoes.brown.png"
shoes_slide "Orange Shoes\nHTML/Javascript", "images/shoes.orange.png"
shoes_slide "Purple Shoes\nSWT", "images/shoes.purple.png"
shoes_slide "Black Shoes\nHTML/CoffeeScript", "images/shoes.black.png"

slide do
  centered_enormous_text 'Shoes 4', margin_top: 200

  # Sneaky, know we want this bumped up after this point
  Shoes::Para::STYLES[:size] = 48
end

main_section 'Slipping into Shoes'

example_code 'Shoes.app', "code/shoes_app.rb"
example_code 'para',      "code/para.rb"
example_code 'button',    "code/button.rb"
example_code 'edit',      "code/edit.rb"

example_code 'Stacks', "code/stacks.rb"
example_code 'Flows',  "code/flows.rb"

slide do
  centered_title "Drawing",
    size: ENORMOUS_SIZE,
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

example_code 'rect', "code/rect.rb"
example_code 'oval', "code/oval.rb"
example_code 'star', "code/star.rb"
example_code 'simple-face', "../shoes4/samples/simple-face.rb", 24

title_slide 'Widgets, animations and more!'

main_section 'Cobbling it Together'
slide do
  centered_enormous_text 'Shoes 4', margin_top: 200
end

title_slide 'Java?'
title_slide 'JRuby'
title_slide 'SWT' do
  para "https://github.com/danlucraft/swt", align: 'center', size: 32, stroke: blue
end

slide do
  rect 150, 200, 300, 150, fill: yellow
  para "DSL", left: 250, top: 260

  rect 550, 200, 300, 150, fill: lightseagreen
  para "SWT", left: 650, top: 260

  line 450, 275, 550, 275, strokewidth: 6
  line 540, 260, 550, 275, strokewidth: 6
  line 540, 290, 550, 275, strokewidth: 6
end

example_code "Progress bar", "code/progress.rb", 28
example_code "dsl.rb", "code/progress-dsl.rb", 28, false
example_code "progress.rb", "code/progress-class.rb", 28, false
example_code "progress.rb", "code/progress-class-2.rb", 28, false
example_code "progress.rb", "code/progress-class-3.rb", 28, false
example_code "swt/progress.rb", "code/progress-backend.rb", 28, false
example_code "swt/progress.rb", "code/progress-backend-2.rb", 28, false

example_code "progress_spec.rb", "code/progress-dsl-spec.rb", 28, false
example_code "swt/progress_spec.rb", "code/progress-backend-spec.rb", 28, false

title_slide "Startup and other costs"

main_section 'Kick Something Back', margin_top: 100
fullscreen_image "images/guardfile.png"
fullscreen_image "images/newcomer-friendly.png"

slide do
  background cornflowerblue
  centered_title 'Thanks!',
    size: 120,
    weight: 'bold',
    margin_top: 100
  para "@jasonrclark",
    align: 'center',
    size: 32,
    margin_top: 30
  image "images/shoes.png",
    left:450,
    margin_top: 30
end
