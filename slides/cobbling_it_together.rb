main_section "CobblingItTogether", 'Cobbling it Together'
main_section "AWalkThroughShoes", 'A walk through Shoes'
slide "MoreShoes4" do
  centered_enormous_text 'Shoes 4', margin_top: 200
end

title_with_icon "GetInvolved", "Get Involved"
title_with_icon "Architecture", "Shoes 4 Architecture"

slide "Shoes4OnGithub" do
  center_horizontally image "images/shoes4-repo.png", width: 1400
end

title_slide "ShoesGem", "gem 'shoes'"
title_slide "ShoesCore", "gem 'shoes-core'"
title_slide "ShoesSwt", "gem 'shoes-swt'"
title_slide "ShoesPackage", "gem 'shoes-package'"
title_slide "Furoshiki", "gem 'furoshiki'"
title_slide "ShoesManual", "gem 'shoes-manual'"

slide "Manual" do
  center_horizontally image "images/manual.png", width: 1400
end

title_slide "UseJava",  'Java?'
title_slide "UseJRuby", 'JRuby'

title_slide "SwtGem", "gem 'swt'" do
  para "https://github.com/danlucraft/swt", align: 'center', size: 32, stroke: blue
end

slide "ArchitectureDiagram" do
  para "shoes-core", left: 200, top: 100, size: 100
  para "shoes-swt",  left: 1200, top: 100, size: 100

  line 960, 0, 960, 1200, strokewidth: 10, stroke: gray

  rect 200, 300, 400, 200, strokewidth: 3, fill: lightgray
  para "Shoes::Rect", left: 280, top: 370, size: 40

  line 600, 400, 1200, 400, strokewidth: 3, fill: gray

  rect 1200, 300, 530, 200, strokewidth: 3, fill: lightgray
  para "Shoes::Swt::Rect", left: 1300, top: 370, size: 40

  line 1465, 500, 1465, 600, strokewidth: 3, fill: gray

  rect 1200, 600, 530, 200, strokewidth: 3, fill: lightgray
  para "Shoes::Swt::RectPainter", left: 1250, top: 670, size: 40
end

slide "DslDiagram" do
  rect 150, 200, 300, 150, fill: yellow
  para "DSL", left: 250, top: 260

  rect 550, 200, 300, 150, fill: lightseagreen
  para "SWT", left: 650, top: 260

  line 450, 275, 550, 275, strokewidth: 6
  line 540, 260, 550, 275, strokewidth: 6
  line 540, 290, 550, 275, strokewidth: 6
end

example_code "ProgressDemo",   "Progress bar", "code/progress.rb",
             size: 28, demo: true
example_code "ProgressDsl",    "dsl.rb", "code/progress-dsl.rb", size: 28
example_code "ProgressClass1", "progress.rb", "code/progress-class.rb",
             size: 28
example_code "ProgressClass2", "progress.rb", "code/progress-class-2.rb",
             size: 28
example_code "ProgressClass3", "progress.rb", "code/progress-class-3.rb",
             size: 28
example_code "ProgressSwt1",   "swt/progress.rb", "code/progress-backend.rb",
             size: 28
example_code "ProgressSwt2",   "swt/progress.rb", "code/progress-backend-2.rb",
             size: 28

example_code "ProgressSpec",    "progress_spec.rb", "code/progress-dsl-spec.rb", size: 28
example_code "ProgressSwtSpec", "swt/progress_spec.rb", "code/progress-backend-spec.rb", size: 28

title_slide "StartupAndCosts", "Startup and other costs"


example_code 'ButtonDsl', 'dsl.rb', 'button-dsl.rb'
example_code 'ButtonClass', "Button Class", 'button-class.rb'
example_code 'UIElement', "UIElement", 'ui-element.rb'
example_code 'CommonInitialization', "Common::Initialization", 'common-initialization.rb'
example_code 'CommonInitializationHandleBlock', "Common::Initialization", 'common-initialization-handle-block.rb'
example_code 'CommonClickable', "Common::Clickable", 'common-clickable.rb'
example_code 'SwtButton', "Swt::Button", 'swt-button.rb'
example_code 'SwtSwtButton', "Swt::SwtButton", 'swt-swt-button.rb'
example_code 'SwtSwtButtonClick', "Swt::SwtButton", 'swt-swt-button-click.rb'

title_slide 'Phew', 'Phew...'
