#main_section "KickSomethingBack", 'Kick Something Back', margin_top: 100
title_with_icon "KickSomethingBack", "Kick Back"

slide "Guardfile" do
  fullscreen_image "images/guardfile.png"
end

slide "NewcomerFriendly" do
  fullscreen_image "images/newcomer-friendly.png"
end

slide "Stickers" do
  fullscreen_image "images/stickers.png"
end

slide "Thanks" do
  background mediumpurple
  centered_title "Thanks!", size: 200,
                       weight: 'bold',
                       margin_top: 200
  center_horizontally image "images/new-shoes.png", width: 300, margin_top: 30

  para "http://github.com/shoes",
    align: 'center',
    size: 50,
    margin_top: 350,
    stroke: darkblue
  para "https://github.com/jasonrclark/new_pair_of_shoes",
    align: 'center',
    size: 50,
    margin_top: 20,
    stroke: darkblue
  para "@jasonrclark",
    align: 'center',
    size: 50,
    margin_top: 20,
    stroke: darkblue
end

slide "TobiThanks" do
  background limegreen
  centered_title 'Shoes on!', size: 80,
                                       weight: 'bold',
                                       margin_top: 70
  para "@PragTob",
       align: 'center',
       size: 32,
       margin_top: 15
  para "http://github.com/shoes/shoes4",
       align: 'center',
       size: 32,
       margin_top: 15
  para "http://github.com/PragTob/wingtips",
       align: 'center',
       size: 32,
       margin_top: 15
  para "http://github.com/jasonrclark/get_your_shoes_back_on",
       align: 'center',
       size: 32,
       margin_top: 15
  center_horizontally image "images/shoes.png", margin_top: 30
end
