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
  centered_huge_text "What's", weight: 'bold', margin_top: 120
  center_horizontally image "images/shoes.png", margin_top: 30
  centered_huge_text "?", weight: 'bold', margin_top: 170
end

main_section 'ShoesQuestion', 'Shoes?'

title_with_icon "DEMOS", "DEMOS"

slide "History" do
  background mediumpurple
  centered_title "History",
    size: 200,
    weight: 'bold',
    margin_top: 200
  image "images/shoes.png", width: 200, left: 700, margin_top: 100
  image "images/shoes-lineup.png", width: 300, left: 925, margin_top: 150
end

# Note: relies on you having the shoes4 repository checked out
# and in the same directory as get_your_shoes_back_on
demo_slide "Minesweeper", "../shoes4/samples/expert_minesweeper.rb"
demo_slide "Snake", "../shoes4/samples/expert_snake.rb"
demo_slide "Clock", "../shoes4/samples/good_clock.rb"

slide "Why" do
  image "images/_why.jpg", height: 1080
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
shoes_slide "Federales", "Shoes 3:\nFederales", "images/federales.png"

slide "RaspberryPi" do
  fullscreen_image "images/raspberry-pi.jpg"
end

title_slide "Shoes3", "Shoes 3"
title_slide "SoManyShoes", "So. Many. Shoes."
title_slide "Shoes4", "Shoes 4"

title_slide "Rc1", "4.0.0.rc1!!!!"

slide "BackTogether" do
  center_horizontally image "images/back-together.png", width: 1400
  para "❤️", size: 100, left: 100, top: 175
end

title_slide "CrossPlatform", "Cross Platform"
title_slide "RubyGuiDsl", "Ruby DSL in the GUI world"
