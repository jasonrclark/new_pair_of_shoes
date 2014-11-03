it "multiplies by 100 when calling real.selection" do
  expect(real).to receive(:selection=).and_return(55)
  subject.fraction = 0.55
end

it "rounds up correctly" do
  expect(real).to receive(:selection=).and_return(100)
  subject.fraction = 0.999
end
