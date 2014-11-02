#main_section 'Old Shoes'
#unfinished 'What is it?'
#unfinished '_why'
#unfinished 'Hackety-Hack'
#unfinished '*disappears*'
#unfinished 'Proliferation of Shoes'
#unfinished 'Shoes 4'

#main_section 'Slipping into Shoes'

#example_code 'Shoes.app', "code/shoes_app.rb"
#example_code 'para',      "code/para.rb"
#example_code 'button',    "code/button.rb"
#example_code 'edit',      "code/edit.rb"

#example_code 'Stacks', "code/stacks.rb"
#example_code 'Flows',  "code/flows.rb"

slide do
  centered_title "Drawing",
    size: ENORMOUS_SIZE,
    weight: 'bold',
    margin_top: 200

  x,y = 100, 100
  @a = animate do
    dx, dy = Random.rand(-100..100), Random.rand(-70..70)
    line x, y, x + dx, y + dy
    x, y = x + dx, y + dy
  end
end

example_code 'rect', "code/rect.rb"

unfinished 'oval'
unfinished 'star'
unfinished 'simple-face'
unfinished 'Widgets, animations and more!'

main_section 'Cobbing it Together'

unfinished 'A story of multiple backends'
unfinished 'Why JRuby and SWT?'

unfinished 'Diagram of how it works'

unfinished 'Code example with a slice through the stack'
unfinished 'DSL method on shoes'
unfinished 'DSL class implementation, call to backendfor'
unfinished 'Backend implementation'

unfinished 'Specs, or how even do you GUI?'

unfinished 'Wrestling with startup costs'

main_section 'Kick Something Back'
unfinished 'My story'
unfinished 'Friendly, fun project for beginners'
unfinished 'Newcomer Friendly tag'
