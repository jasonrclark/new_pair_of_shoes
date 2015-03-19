def click(blk)
  remove_listeners
  @real.add_selection_listener do
    eval_block blk
  end
end