require_relative "../lib/caesar_cipher"

describe "the caesar_cipher method" do
  it "should return the letter with a shift to the right in A-Z loop of 'shift_key'" do
    expect(caesar_cipher("salut",5)).to eq("xfqzy")
    expect(caesar_cipher("I LoVe Ruby",10)).to eq("S VyFo Beli")
    
  end

  # it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
  #   expect(is_multiple_of_3_or_5?(1)).to eq(false)
  #   expect(is_multiple_of_3_or_5?(4)).to eq(false)
  #   expect(is_multiple_of_3_or_5?(11)).to eq(false)
  #   expect(is_multiple_of_3_or_5?(37)).to eq(false)
  # end
end