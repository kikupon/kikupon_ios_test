describe 'UIColor' do

  it "should have a #uicolor method" do
    UIColor.redColor.uicolor.should == UIColor.redColor
  end

  it "should have a #uicolor(alpha) method" do
    UIColor.redColor.uicolor(0.5).alpha.should == 0.5
  end

  describe "should have a #+(color) method" do

    it 'should add white and black to make gray' do
      new_color = UIColor.whiteColor + UIColor.blackColor
      new_color.red.should == 0.5
      new_color.green.should == 0.5
      new_color.blue.should == 0.5
      new_color.alpha.should == 1.0
    end

    it 'should add black and white to make gray' do
      new_color = UIColor.blackColor + UIColor.whiteColor
      new_color.red.should == 0.5
      new_color.green.should == 0.5
      new_color.blue.should == 0.5
      new_color.alpha.should == 1.0
    end

    it 'should add alpha channel (white + clear)' do
      new_color = UIColor.whiteColor + UIColor.clearColor
      new_color.red.should == 1.0
      new_color.green.should == 1.0
      new_color.blue.should == 1.0
      new_color.alpha.should == 0.5
    end

    it 'should add alpha channel (clear + white)' do
      new_color = UIColor.clearColor + UIColor.whiteColor
      new_color.red.should == 1.0
      new_color.green.should == 1.0
      new_color.blue.should == 1.0
      new_color.alpha.should == 0.5
    end

  end

  describe "should have a #<<(color) method" do
    it "should return white no matter what" do
      new_color = UIColor.whiteColor << UIColor.blackColor
      new_color.red.should == 1.0
      new_color.green.should == 1.0
      new_color.blue.should == 1.0
    end

    it "should have no effect with black" do
      new_color = UIColor.blueColor << UIColor.blackColor
      new_color.red.should == 0.0
      new_color.green.should == 0.0
      new_color.blue.should == 1.0
    end

    it "should add blue to red" do
      new_color = UIColor.redColor << UIColor.blueColor
      new_color.red.should == 1.0
      new_color.green.should == 0.0
      new_color.blue.should == 1.0
    end

    it "should use opacity when adding blue to red" do
      new_color = UIColor.redColor << UIColor.blueColor.colorWithAlphaComponent(0.5)
      new_color.red.should == 1.0
      new_color.green.should == 0.0
      new_color.blue.should == 0.5
    end

  end

  it "should have a #invert method" do
    :red.uicolor.invert.should == UIColor.cyanColor
    :green.uicolor.invert.should == UIColor.magentaColor
    :blue.uicolor.invert.should == UIColor.yellowColor

    :white.uicolor.invert.red.should == 0
    :white.uicolor.invert.green.should == 0
    :white.uicolor.invert.blue.should == 0

    :black.uicolor.invert.red.should == 1
    :black.uicolor.invert.green.should == 1
    :black.uicolor.invert.blue.should == 1
  end

  it "should have a #mix_with method" do
    white = :white.uicolor
    black = :black.uicolor
    gray = :gray.uicolor
    white.mix_with(black, 0).red.should == 1
    white.mix_with(black, 0).green.should == 1
    white.mix_with(black, 0).blue.should == 1

    white.mix_with(black, 1).red.should == 0
    white.mix_with(black, 1).green.should == 0
    white.mix_with(black, 1).blue.should == 0

    white.mix_with(black, 0.5).red.should == 0.5
    white.mix_with(black, 0.5).green.should == 0.5
    white.mix_with(black, 0.5).blue.should == 0.5

    white.mix_with(black, 0.25).red.should == 0.75
    white.mix_with(black, 0.25).green.should == 0.75
    white.mix_with(black, 0.25).blue.should == 0.75

    white.mix_with(black, 0.75).red.should == 0.25
    white.mix_with(black, 0.75).green.should == 0.25
    white.mix_with(black, 0.75).blue.should == 0.25
  end

end
