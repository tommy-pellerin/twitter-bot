require_relative "../lib/trader"

describe "the day_trader method" do
  it "should return an array of 2 number : [the best buy date,the best sell date]'" do
    expect(day_trader([1,10])).to eq([0,1])
    expect(day_trader([5,15,3])).to eq([0,1])
    expect(day_trader([10,7,25,12,1])).to eq([1,2])
    expect(day_trader([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    
    
  end

  # it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
  #   expect(is_multiple_of_3_or_5?(1)).to eq(false)
  #   expect(is_multiple_of_3_or_5?(4)).to eq(false)
  #   expect(is_multiple_of_3_or_5?(11)).to eq(false)
  #   expect(is_multiple_of_3_or_5?(37)).to eq(false)
  # end
end