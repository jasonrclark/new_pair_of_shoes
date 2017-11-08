slide "RubyConfTitle" do
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
        my_left, my_top = 200, 0

        @chicken << shape(left: 0, top:0, fill: white) do
          move_to my_left, my_top
          line_to my_left + 33, my_top + 120
          line_to my_left + 66, my_top
          line_to my_left, my_top
        end

        @chicken << shape(left: 0, top: 0, fill: orange) do
          move_to my_left, my_top + 120
          line_to my_left - 35, my_top + 115
          line_to my_left, my_top + 110
          line_to my_left, my_top + 120
        end

        @chicken << shape(left: 0, top: 0, fill: red) do
          move_to my_left, my_top + 120
          line_to my_left + 20, my_top + 165
          line_to my_left + 25, my_top + 150
          line_to my_left + 35, my_top + 170
          line_to my_left + 45, my_top + 150
          line_to my_left + 55, my_top + 167
          line_to my_left + 60, my_top + 130
        end

        @chicken << oval(my_left, my_top + 85, 66, 66, fill: white)
        @chicken << oval(my_left + 20, my_top + 120, 10, 10, fill: ivory)
        @chicken << oval(my_left + 20, my_top + 122, 5, 5, fill: blue)

        sound(File.expand_path("sounds/chicken.mp3")).play
      end
    end
  end

  background mediumpurple
  centered_title "A New Pair\nof Shoes",
    size: 200,
    weight: 'bold',
    margin_top: 100
  para "@jasonrclark",
    align: 'center',
    size: 64,
    margin_top: 30
  center_horizontally image "images/new-shoes.png", width: 250, margin_top: 30
end

title_with_icon "WhereDoIStart", '"Where Do I Start?"', size: 150
title_slide "ARadicalIdea", "A Radical Idea"

title_slide "BriefStory", "A Brief Story"

title_with_icon "BigShoes", "Shoes!!!"

slide "WebApp" do
  center_horizontally image "images/browser.jpg", top: 100, width: 1200
end

slide "MobileApp" do
  center_horizontally image "images/mobile.jpg", top: 100, width: 1200
end

slide "Desktop" do
  center_horizontally image "images/desktop.jpg", top: 50, width: 1200
end

slide 'JavaCodeCombined' do
  para "Hello Java", size: 100, align: "center", margin_top: 20, margin_bottom: 20
  c = code <<-CODE
public class HelloWorldSwing {
  private static void createAndShowGUI() {
    JFrame frame = new JFrame("HelloWorldSwing");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    JLabel label = new JLabel("Hello World");
    frame.getContentPane().add(label);

    frame.pack();
    frame.setVisible(true);
  }

  public static void main(String[] args) {
    javax.swing.SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        createAndShowGUI();
      }
    });
  }
}
  CODE
  c.font = 'Courier'
  c.size = 30
end
