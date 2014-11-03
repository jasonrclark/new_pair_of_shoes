def fraction=(value)
  unless @real.disposed?
    @real.selection = (value*100).to_i
  end
end
