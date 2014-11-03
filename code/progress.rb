Shoes.app do
  @p = progress fraction: 0.0, left: 200, top: 200
  animate do
    @p.fraction += 0.03
  end
end
