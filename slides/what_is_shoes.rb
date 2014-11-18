slide "MainTitle" do
  background cornflowerblue
  centered_title 'Get Your Shoes (Back) On',
    size: 120,
    weight: 'bold',
    margin_top: 100
  para "@jasonrclark",
    align: 'center',
    size: 32,
    margin_top: 30
  center_horizontally image "images/shoes.png", margin_top: 30
end

slide "WhatIsShoes" do
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

        sound(File.expand_path("sounds/chicken.mp3")).play
      end
    end
  end
  centered_huge_text "What's", weight: 'bold', margin_top: 120
  center_horizontally image "images/shoes.png", margin_top: 30
  centered_huge_text "?", weight: 'bold', margin_top: 170
end

title_slide "DEMOS", "DEMOS"

demo_slide "Minesweeper", "../shoes4/samples/expert-minesweeper-adjusted.rb"
demo_slide "Snake", "../shoes4/samples/expert-snake.rb"
demo_slide "Clock", "../shoes4/samples/good-clock.rb"

slide "Why" do
  fullscreen_image "images/_why.png"
  para "_why", left: 100, top: 100, size: Wingtips::VERY_BIG_SIZE
end

slide "HacketyHack" do
  fullscreen_image "images/hacketyhack.png"
end

slide "WhysGone" do
  background grey
end

shoes_slide "GreenShoes",  "Green Shoes\nGtk", "images/shoes.green.png"
shoes_slide "BlueShoes",   "Blue Shoes\nQt", "images/shoes.blue.png"
shoes_slide "BrownShoes",  "Brown Shoes\nSWT/Swing", "images/shoes.brown.png"
shoes_slide "OrangeShoes", "Orange Shoes\nHTML/Javascript", "images/shoes.orange.png"
shoes_slide "PurpleShoes", "Purple Shoes\nSWT", "images/shoes.purple.png"
shoes_slide "BlackShoes",  "Black Shoes\nHTML/CoffeeScript", "images/shoes.black.png"

title_slide "Shoes4", "Shoes 4"
