require File.dirname(__FILE__) + '/../../spec_helper'

describe "Bignum" do
  platform_is :wordsize => 32 do
    it "has positive threshold value 2 ** 30" do
      max = 2 ** 30
      max.class.should == Bignum
      sub = max - 1
      sub.should == 1073741823
      sub.class.should == Fixnum
    end
  end

  platform_is :wordsize => 64 do
    it "has positive threshold value 2 ** 60" do
      max = 2 ** 60
      max.class.should == Bignum
      sub = max - 1
      sub.should == 1152921504606846975
      sub.class.should == Fixnum
    end
  end
  
  platform_is :wordsize => 32 do
    it "has negative threshold value -(2 ** 30)" do
      min = -2 ** 30
      min.class.should == Bignum
      sub = min + 1
      sub.should == -1073741823
      sub.class.should == Fixnum
    end
  end

  platform_is :wordsize => 64 do
    it "has negative threshold value -(2 ** 60)" do
      min = -2 ** 60
      min.class.should == Bignum
      sub = min + 1
      sub.should == -1152921504606846975
      sub.class.should == Fixnum
    end
  end
end
