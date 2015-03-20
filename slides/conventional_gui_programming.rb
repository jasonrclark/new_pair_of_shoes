# encoding: UTF-8

path = File.expand_path(File.join(File.dirname(__FILE__),
                                  '../images/google_gui_hello_world/'))
directory = Dir.glob(path + '/*.png')

title_slide 'YearsBack', '7 Years Back'
fullscreen_image_slide 'TobiBackThen', 'tobi_pre_abi.jpg'
title_slide 'IWantToLearnGui', 'I want to learn GUI programming!'

directory.sort.each_with_index do |image_path, i|
  class_name = "GuiHelloWorld#{i}"
  fullscreen_image_slide class_name, image_path
end

slide 'JavaCode1' do
  empty_line
  code <<-CODE
public class HelloWorldSwing {
    private static void createAndShowGUI() {
        JFrame frame = new JFrame("HelloWorldSwing");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JLabel label = new JLabel("Hello World");
        frame.getContentPane().add(label);

        frame.pack();
        frame.setVisible(true);
    }
  CODE
end

slide 'JavaCode2' do
  empty_line
  code <<-CODE
  public static void main(String[] args) {
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

tobi_example_code 'HelloShoes', 'hello_shoes.rb'

slide 'IHeartShoes' do
  3.times do empty_line end
  para 'I ', fg('♥', red), ' Shoes', size: Wingtips::ENORMOUS_SIZE, align: 'center'
end