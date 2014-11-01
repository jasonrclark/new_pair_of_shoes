def unfinished(text)
  slide do
    background yellow
    centered_title text, size: VERY_BIG_SIZE, vertical_align: 'center'
  end
end

def main_section(text)
  slide do
    background cornflowerblue
    centered_title text, {
      size: 240,
      weight: 'bold',
      margin_top: 200
    }
  end
end

def example_code(title, path)
  slide do
    centered_title title, margin_bottom: "50px"

    element = code(path, true)
    element.font = "Courier"
    element.size = 32
  end
end

main_section 'Old Shoes'
unfinished 'What is it?'
unfinished '_why'
unfinished 'Hackety-Hack'
unfinished '*disappears*'
unfinished 'Proliferation of Shoes'
unfinished 'Shoes 4'


main_section 'Slipping into Shoes'

example_code 'Shoes.app', "code/shoes_app.rb"
example_code 'para', "code/para.rb"

unfinished 'button'
unfinished 'edit'

unfinished 'Stacks and Flows'

unfinished 'Drawing'
unfinished 'rect'
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
