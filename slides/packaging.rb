title_with_icon "Packaging",  "Packaging"

slide "PackagingCommandLine" do
  pack_command = <<~EOS
$ shoes package --mac --windows --linux testing/thingy.rb
Packaging mac...
rm -f pkg/tmp/thingy.jar
Creating pkg/tmp/thingy.jar

Packaging windows...
rm -f pkg/tmp/thingy.jar
Creating pkg/tmp/thingy.jar

Packaging linux...
rm -f pkg/tmp/thingy.jar
Creating pkg/tmp/thingy.jar
EOS

  center_horizontally para pack_command, font: "Consolas", size: 45, margin_left: 100, margin_top: 100
end

slide "PackagingResults" do
  pack_results = <<~EOS
$ ls -la testing/pkg/
-rw-r--r--   1 jason  68274151 Nov 11 12:19 thingy-linux.tar.gz
-rw-r--r--   1 jason  68451819 Nov 11 12:19 thingy-mac.tar.gz
-rw-r--r--   1 jason  70046338 Nov 11 12:19 thingy-windows.zip
EOS

  center_horizontally para pack_results, font: "Consolas", size: 45, margin_left: 100, margin_top: 100
end

slide "PackagedMacApp" do
  center_horizontally image "images/mac-app.png", width: 1200, top: 150
end

title_slide "WarblerGem", "gem 'warbler'" do
  para "https://github.com/jruby/warbler", align: 'center', size: 32, stroke: blue
end

title_slide "FuroshikiGem", "gem 'furoshiki'" do
  para "https://github.com/shoes/furoshiki", align: 'center', size: 32, stroke: blue
end
