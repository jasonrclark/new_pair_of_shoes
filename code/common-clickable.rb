def register_click(blk = nil)
  click(&@style[:click]) if @style[:click]
  click(&blk) if blk
end

def click(&blk)
  @gui.click blk
end
