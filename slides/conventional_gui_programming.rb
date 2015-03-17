path = File.expand_path(File.join(File.dirname(__FILE__),
                                  '../images/google_gui_hello_world/'))
directory = Dir.glob(path + '/*.png')


puts path
p directory
puts directory

directory.sort.each_with_index do |image_path, i|
  class_name = "GuiHelloWorld#{i}"
  puts class_name
  puts image_path
  fullscreen_image_slide class_name, image_path
end