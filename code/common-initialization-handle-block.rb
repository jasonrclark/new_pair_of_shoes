# By default it will treat things as
# clickable, and assumes the
# necessary methods are there.
#
# Override if DSL element uses that block
# for something else (i.e. slot)
def handle_block(blk)
  return unless blk
  register_click blk
end