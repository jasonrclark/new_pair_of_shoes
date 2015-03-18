# encoding: UTF-8

path = File.expand_path(File.join(File.dirname(__FILE__),
                                  '../images/google_gui_hello_world/'))
directory = Dir.glob(path + '/*.png')

directory.sort.each_with_index do |image_path, i|
  class_name = "GuiHelloWorld#{i}"
  fullscreen_image_slide class_name, image_path
end

slide 'JavaCode1' do
  empty_line
  code <<-CODE
public class HelloWorldSwing {
    private static void createAndShowGUI() {
        //Create and set up the window.
        JFrame frame = new JFrame("HelloWorldSwing");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        //Add the ubiquitous "Hello World" label.
        JLabel label = new JLabel("Hello World");
        frame.getContentPane().add(label);

        //Display the window.
        frame.pack();
        frame.setVisible(true);
    }
  CODE
end

slide 'JavaCode2' do
  empty_line
  code <<-CODE
  public static void main(String[] args) {
      //Schedule a job for the event-dispatching thread:
      //creating and showing the GUI.
      javax.swing.SwingUtilities.invokeLater(new Runnable() {
          public void run() {
              createAndShowGUI();
          }
      });
  }
}
  CODE
end

# TODO fix whiteness of image or adjust background color
slide 'Eww' do
  background white
  empty_line
  center_horizontally image 'eww.png'
end

title_slide 'NotWhatIWanted', 'Not what I wanted'
title_slide 'CouldItBeSimpler', "Why can't it be simpler?"
title_slide 'JustHelloWorld', 'I just wanted to say "Hello World"'

slide 'HelloShoes' do
  empty_line
  hello_shoes = <<-Code
Shoes.app title: 'Hello Shoes' do
  para 'Hello World'
end
  Code
  code hello_shoes, true
end

slide 'IHeartShoes' do
  5.times do empty_line end
  para 'I ', fg('♥', red), ' Shoes', size: Wingtips::ENORMOUS_SIZE, align: 'center'
end