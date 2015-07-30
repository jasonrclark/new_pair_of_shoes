main_section "CobblingItTogether", 'Cobbling it Together'
main_section "AWalkThroughShoes", 'A walk through Shoes'

title_slide "MoreShoes4", "Shoes 4"
title_slide "UseJava",  'Java?'
title_slide "UseJRuby", 'JRuby!' do
  center_horizontally image 'jruby.png', height: 250, top: 75
end

title_slide "SwtGem",   'SWT' do
  para "https://github.com/danlucraft/swt", align: 'center', size: 32, stroke: blue
end

slide "DslDiagram" do
  rect 150, 200, 300, 150, fill: yellow
  para "DSL", left: 220, top: 225, size: 90

  rect 550, 200, 300, 150, fill: lightseagreen
  para "SWT", left: 600, top: 225, size: 90

  line 450, 275, 550, 275, strokewidth: 6
  line 540, 260, 550, 275, strokewidth: 6
  line 540, 290, 550, 275, strokewidth: 6
end

example_code "ProgressDemo",   "Progress bar", "code/progress.rb",
             size: 28, demo: true
example_code "ProgressDsl",    "core/dsl.rb", "code/progress-dsl.rb", size: 28
example_code "ProgressClass1", "core/progress.rb", "code/progress-class.rb",
             size: 28
example_code "ProgressClass2", "core/progress.rb", "code/progress-class-2.rb",
             size: 28
example_code "ProgressClass3", "core/progress.rb", "code/progress-class-3.rb",
             size: 28
example_code "ProgressSwt1",   "swt/progress.rb", "code/progress-backend.rb",
             size: 28
example_code "ProgressSwt2",   "swt/progress.rb", "code/progress-backend-2.rb",
             size: 28

example_code "ProgressSpec",    "core/progress_spec.rb", "code/progress-dsl-spec.rb", size: 28
example_code "ProgressSwtSpec", "swt/progress_spec.rb", "code/progress-backend-spec.rb", size: 28

title_slide "StartupAndCosts", "Startup"

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
