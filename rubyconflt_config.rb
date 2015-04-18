wingtips_options  app: {title: "Get Your Shoes (Back) On"},
                  background_color: Shoes::COLORS[:white],
                  code_highlighting: {
                    comment:   {stroke: "#887"},
                    keyword:   {stroke: Shoes::COLORS[:navy], weight: 'bold'},
                    method:    {stroke: Shoes::COLORS[:black], weight: 'bold'},
                    symbol:    {stroke: Shoes::COLORS[:darkviolet], weight: 'bold'},
                    string:    {stroke: Shoes::COLORS[:forestgreen], weight: 'bold'},
                    number:    {stroke: Shoes::COLORS[:steelblue], weight: 'bold'},
                    regex:     {stroke: "#000", fill: "#FFC"},
                    attribute: {stroke: Shoes::COLORS[:darkviolet], weight: 'bold'},
                    expr:      {stroke: "#722", weight: 'bold'},
                    ident:     {stroke: "#994c99", weight: 'bold'},
                    constant:  {stroke: Shoes::COLORS[:darkviolet], weight: "bold"},
                    class:     {stroke: Shoes::COLORS[:darkviolet], weight: "bold"},
                    matching:  {stroke: "#ff0", weight: "bold"},
              }
slide do
  font 'fonts/ArchitectsDaughter.ttf'
  font = 'ArchitectsDaughter'
  style(Shoes::Para, font: font)
  style(Shoes::Title, font: font)
  style(Shoes::Banner, font: font)
  style(Shoes::Subtitle, font: font)
end

slides YearsBack,
       TobiBackThen,
       IWantToLearnGui

slides GuiHelloWorld0,
  GuiHelloWorld1,
  GuiHelloWorld2,
  GuiHelloWorld3,
  GuiHelloWorld4,
  JavaCode1,
  JavaCode2,
  Eww,
  NotWhatIWanted,
  CouldItBeSimpler,
  JustHelloWorld,
  ManyYearsPass,
  HelloShoes,
  IHeartShoes

slide do
  centered_title 'Get Your Shoes Back on',
                 weight: :bold,
                 margin_top: 100,
                 size: 60
  center_horizontally scale_image_by(image("shoes.png", margin_top: 30), 1.3)
  centered_subtitle 'Tobias Pfeiffer - @PragTob', weight: :bold, margin_top: 220
  center_horizontally scale_image_by(image("bitcrowd.png", margin_top: 30), 0.3)
end

slides ShoesQuestion,
       RubyGuiDsl,
       CrossPlatform,
       DEMOS,
       Minesweeper,
       Snake,
       Clock,
       Why,
       HacketyHack,
       WhysGone,
       GreenShoes,
       BlueShoes,
       PurpleShoes,
       OrangeShoes,
       BlackShoes,
       BrownShoes,
       Shoes4

slides TobiSlippingIntoShoes,
       ShoesApp,
       Para,
       Edit,
       Stacks,
       Flows,
       Drawing,
       Rect,
       TobiSimpleFace,
       BasicApp,
       WidgetsAndMore

slides AWalkThroughShoes,
       DslDiagram,
       Button,
       ButtonDsl,
       ButtonClass,
       UIElement,
       CommonInitialization,
       CommonInitializationHandleBlock,
       CommonClickable,
       SwtButton,
       SwtSwtButton,
       SwtSwtButtonClick,
       Phew

slides WhyCare,
       Web,
       Console,
       Learn,
       Tool,
       Teaching,
       Fun

slides HowDoesThisWorkDSL,
       TobiThanks,
       PhotoCredit

