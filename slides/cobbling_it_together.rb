main_section "CobblingItTogether", 'Cobbling it Together'
main_section "AWalkThroughShoes", 'A walk through Shoes'
slide "MoreShoes4" do
  centered_enormous_text 'Shoes 4', margin_top: 200
end

title_slide "UseJava",  'Java?'
title_slide "UseJRuby", 'JRuby'
title_slide "SwtGem",   'SWT' do
  para "https://github.com/danlucraft/swt", align: 'center', size: 32, stroke: blue
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

example_code "ProgressDemo",   "Progress bar", "code/progress.rb", 28
example_code "ProgressDsl",    "dsl.rb", "code/progress-dsl.rb", 28, false
example_code "ProgressClass1", "progress.rb", "code/progress-class.rb", 28, false
example_code "ProgressClass2", "progress.rb", "code/progress-class-2.rb", 28, false
example_code "ProgressClass3", "progress.rb", "code/progress-class-3.rb", 28, false
example_code "ProgressSwt1",   "swt/progress.rb", "code/progress-backend.rb", 28, false
example_code "ProgressSwt2",   "swt/progress.rb", "code/progress-backend-2.rb", 28, false

example_code "ProgressSpec",    "progress_spec.rb", "code/progress-dsl-spec.rb", 28, false
example_code "ProgressSwtSpec", "swt/progress_spec.rb", "code/progress-backend-spec.rb", 28, false

title_slide "StartupAndCosts", "Startup and other costs"


tobi_example_code 'ButtonDsl', 'dsl.rb', 'button-dsl.rb'
tobi_example_code 'ButtonClass', "Button Class", 'button-class.rb'
tobi_example_code 'UIElement', "UIElement", 'ui-element.rb'
tobi_example_code 'CommonInitialization', "Common::Initialization", 'common-initialization.rb'
tobi_example_code 'CommonInitializationHandleBlock', "Common::Initialization", 'common-initialization-handle-block.rb'
tobi_example_code 'CommonClickable', "Common::Clickable", 'common-clickable.rb'
tobi_example_code 'SwtButton', "Swt::Button", 'swt-button.rb'
tobi_example_code 'SwtSwtButton', "Swt::SwtButton", 'swt-swt-button.rb'
tobi_example_code 'SwtSwtButtonClick', "Swt::SwtButton", 'swt-swt-button-click.rb'

title_slide 'Phew', 'Phew...'
