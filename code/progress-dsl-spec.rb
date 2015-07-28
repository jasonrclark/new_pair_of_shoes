context "setting fraction" do
  it "sets on gui" do
    expect(progress.gui).to receive(:fraction=)
                            .with(0.5)
    progress.fraction = 0.5
  end

  it "sets on self" do
    progress.fraction = 0.5
    expect(progress.fraction).to eq(0.5)
  end
end
